import 'dart:async';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/values.dart';
import 'package:my_app/global.dart';

/*
  * http 操作类
  *
  * 手册
  * https://github.com/flutterchina/dio/blob/master/README-ZH.md#formdata
  *
  * 从2.1.x升级到 3.x
  * https://github.com/flutterchina/dio/blob/master/migration_to_3.0.md
*/
class HttpUtil {
  static final HttpUtil _instance = HttpUtil._internal();

  factory HttpUtil() => _instance;
  CancelToken cancelToken = CancelToken();
  late Dio dio;

  HttpUtil._internal() {
    // BaseOptions、Options、RequestOptions 都可以配置参数，优先级别依次递增，且可以根据优先级别覆盖参数
    BaseOptions options = BaseOptions(
      // 请求基地址,可以包含子路径
      baseUrl: SERVER_API_URL,

      // baseUrl: storage.read(key: STORAGE_KEY_APIURL) ?? SERVICE_API_BASEURL,
      //连接服务器超时时间，单位是毫秒.
      connectTimeout: const Duration(seconds: 10000),

      // 响应流上前后两次接受到数据的间隔，单位为毫秒。
      receiveTimeout: const Duration(seconds: 5000),

      // Http请求头.
      headers: {},

      /// 请求的Content-Type，默认值是"application/json; charset=utf-8".
      /// 如果您想以"application/x-www-form-urlencoded"格式编码请求数据,
      /// 可以设置此选项为 `Headers.formUrlEncodedContentType`,  这样[Dio]
      /// 就会自动编码请求体.
      contentType: 'application/json; charset=utf-8',

      /// [responseType] 表示期望以那种格式(方式)接受响应数据。
      /// 目前 [ResponseType] 接受三种类型 `JSON`, `STREAM`, `PLAIN`.
      ///
      /// 默认值是 `JSON`, 当响应头中content-type为"application/json"时，dio 会自动将响应内容转化为json对象。
      /// 如果想以二进制方式接受响应数据，如下载一个二进制文件，那么可以使用 `STREAM`.
      ///
      /// 如果想以文本(字符串)格式接收响应数据，请使用 `PLAIN`.
      responseType: ResponseType.json,
    );
    dio = Dio(options);

    // Cookie管理
    CookieJar cookieJar = CookieJar();
    dio.interceptors.add(CookieManager(cookieJar));

    // 添加拦截器
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          // print("请求之前");
          // Loading.before(options.uri, '正在通讯...');
          return handler.next(options); //continue
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) {
          // 在收到响应后做一些事情
          // 可以处理响应数据等
          return handler.next(response);
        },
        onError: (DioException error, ErrorInterceptorHandler handler) {
          // 在请求过程中发生错误时做一些事情
          // 可以处理错误信息等
          return handler.next(error);
        },
      ),
    );


    // 在调试模式下需要抓包调试，所以我们使用代理，并禁用HTTPS证书校验
    if (!Global.isRelease && PROXY_ENABLE) {
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
        client.findProxy = (uri) {
          return "PROXY $PROXY_IP:$PROXY_PORT";
        };
        // 代理工具会提供一个抓包的自签名证书，会通不过证书校验，所以我们禁用证书校验
        client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
        return null;
      };
    }

  }


  /*
   * error统一处理
   */
  // 错误信息
  ErrorEntity createErrorEntity(DioException error) {
    switch (error.type) {
      case DioExceptionType.cancel:
        {
          return ErrorEntity(code: -1, message: "请求取消");
        }
        break;
      case DioExceptionType.connectionTimeout:
        {
          return ErrorEntity(code: -1, message: "连接超时");
        }
        break;
      case DioExceptionType.sendTimeout:
        {
          return ErrorEntity(code: -1, message: "请求超时");
        }
        break;
      case DioExceptionType.receiveTimeout:
        {
          return ErrorEntity(code: -1, message: "响应超时");
        }
        break;
      case DioExceptionType.badResponse:
        {
          try {
            int errCode = error.response?.statusCode ?? 0;
            // String errMsg = error.response.statusMessage;
            // return ErrorEntity(code: errCode, message: errMsg);

            switch (errCode) {
              case 400:
                {
                  return ErrorEntity(code: errCode, message: "请求语法错误");
                }
                break;
              case 401:
                {
                  return ErrorEntity(code: errCode, message: "没有权限");
                }
                break;
              case 403:
                {
                  return ErrorEntity(code: errCode, message: "服务器拒绝执行");
                }
                break;
              case 404:
                {
                  return ErrorEntity(code: errCode, message: "无法连接服务器");
                }
                break;
              case 405:
                {
                  return ErrorEntity(code: errCode, message: "请求方法被禁止");
                }
                break;
              case 500:
                {
                  return ErrorEntity(code: errCode, message: "服务器内部错误");
                }
                break;
              case 502:
                {
                  return ErrorEntity(code: errCode, message: "无效的请求");
                }
                break;
              case 503:
                {
                  return ErrorEntity(code: errCode, message: "服务器挂了");
                }
                break;
              case 505:
                {
                  return ErrorEntity(code: errCode, message: "不支持HTTP协议请求");
                }
                break;
              default:
                {
                  // return ErrorEntity(code: errCode, message: "未知错误");
                  return ErrorEntity(
                      code: errCode, message: error.response?.statusMessage);
                }
            }
          } on Exception catch (_) {
            return ErrorEntity(code: -1, message: "未知错误");
          }
        }
        break;
      default:
        {
          return ErrorEntity(code: -1, message: error.message);
        }
    }
  }

  /*
   * 取消请求
   *
   * 同一个cancel token 可以用于多个请求，当一个cancel token取消时，所有使用该cancel token的请求都会被取消。
   * 所以参数可选
   */
  void cancelRequests(CancelToken token) {
    token.cancel("cancelled");
  }

  /// 读取本地配置
  Options? getLocalOptions() {
    Options? options;
    String? token = StorageUtil().getString(STORAGE_USER_TOKEN_KEY);
    options = Options(headers: {
      'Authorization': 'token $token',
    });
      return options;
  }

  /// restful get 操作
  Future get(String path,
      {required Map<String,dynamic> params, Options? options, CancelToken? cancelToken}) async {
    try {
      print(path);
      var tokenOptions = options ?? getLocalOptions();
      var singResp = duHttpBefore("GET",params,CHANNEL_NUMBER);
      var response = await dio.get(path,
          queryParameters: singResp,
          options: tokenOptions,
          cancelToken: cancelToken);
      return response.data;
    } on DioException catch (e) {
      throw createErrorEntity(e);
    }
  }

  /// restful post 操作
  Future post(String path,
      {required Map<String,dynamic> params,
       Options? options,
       CancelToken? cancelToken}) async {
    try {
      var tokenOptions = options ?? getLocalOptions();
      var singResp = duHttpBefore("post",params,CHANNEL_NUMBER);
      var response = await dio.post(path,
          queryParameters: singResp['params'],
          data: singResp['data'], options: tokenOptions, cancelToken: cancelToken);
      return response.data;
    } on DioException catch (e) {
      throw createErrorEntity(e);
    }
  }

  /// restful put 操作
  Future put(String path,
      {required Map<String,dynamic> params, Options? options, CancelToken? cancelToken}) async {
    try {
      var tokenOptions = options ?? getLocalOptions();
      var singResp = duHttpBefore("PUT",params,CHANNEL_NUMBER);
      var response = await dio.put(path,
          queryParameters: singResp['params'],
          data: singResp['data'], options: tokenOptions, cancelToken: cancelToken);
      return response.data;
    } on DioException catch (e) {
      throw createErrorEntity(e);
    }
  }

  /// restful delete 操作
  Future delete(String path,
      {required Map<String,dynamic> params, Options? options, CancelToken? cancelToken}) async {
    try {
      var tokenOptions = options ?? getLocalOptions();
      var singResp = duHttpBefore("GET",params,CHANNEL_NUMBER);
      var response = await dio.delete(path,
          data: singResp, options: tokenOptions, cancelToken: cancelToken);
      return response.data;
    } on DioException catch (e) {
      throw createErrorEntity(e);
    }
  }

  /// restful post form 表单提交操作
  Future postForm(String path,
      {dynamic params, Options? options, CancelToken? cancelToken}) async {
    try {
      var tokenOptions = options ?? getLocalOptions();
      var response = await dio.post(path,
          data: FormData.fromMap(params),
          options: tokenOptions,
          cancelToken: cancelToken);
      return response.data;
    } on DioException catch (e) {
      throw createErrorEntity(e);
    }
  }
}

// 异常处理
class ErrorEntity implements Exception {
  int code;
  String? message;

  ErrorEntity({required this.code,this.message});

  @override
  String toString() {
    if (message == null) return "Exception";
    return "Exception: code $code, $message";
  }
}
