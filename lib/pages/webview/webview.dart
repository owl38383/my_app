import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_app/global.dart';
import 'package:webview_flutter/webview_flutter.dart';

@RoutePage()
class WebViewPage extends StatefulWidget {
  final String url;
  final bool isReplace;

  WebViewPage({required this.url, required this.isReplace});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late final Future<WebViewController> _initWebViewFuture;
  late final WebViewController _webViewController;
  late final NavigationDelegate _navigationDelegate;

  Uri _getH5Params(String path) {
    Map<String, dynamic> params = Map();
    params['fb_id'] = Global.selectCompany['companyId'];
    params['fb_id'] = Global.selectCompany['companyId'];
    params['fb_name'] = Global.selectCompany['companyName'];
    params['company_type'] = Global.selectCompany['companyType'];
    params['token'] = Global.profile.token.toString();
    params['user_type_id'] = Global.profile.enumUserType.id.toString();
    params['user_name'] = Global.profile.name;
    params['uid'] = Global.profile.userId.toString();
    params['is_uniapp'] = '1';
    if (path.indexOf('?') == -1) {
      path += '?';
    } else {
      path += '&';
    }
    params.forEach((key, value) {
      if (path.endsWith('&')) {
        path += '$key=$value';
      }
      path += '&$key=$value';
    });
    print(path);
    return Uri.parse(path).replace(queryParameters: params);
    // return Uri(path: Uri.decodeFull(path), queryParameters: params);
  }

  @override
  void initState() {
    super.initState();
    _initWebViewFuture = _initWebView();
  }

  Future<WebViewController> _initWebView() async {
    _navigationDelegate = NavigationDelegate(
      onProgress: (int progress) {},
      onPageStarted: (String url) {},
      onPageFinished: (String url) {},
      onWebResourceError: (WebResourceError error) {},
      onNavigationRequest: (NavigationRequest request) {
        if (request.url.startsWith('https://www.mbad.top/')) {
          return NavigationDecision.prevent;
        }
        return NavigationDecision.navigate;
      },
    );
    _webViewController = WebViewController();
    await _webViewController.setJavaScriptMode(JavaScriptMode.unrestricted);
    await _webViewController.addJavaScriptChannel('MyJavaScripChannel',
        onMessageReceived: (JavaScriptMessage message) {});
    await _webViewController.setNavigationDelegate(_navigationDelegate);
    await WebViewCookieManager().setCookie(const WebViewCookie(
        name: 'cookie', value: 'value', domain: 'domain.com'));
    await _webViewController.setBackgroundColor(Colors.black12);
    await _webViewController.loadRequest(_getH5Params(widget.url));

    return Future.value(_webViewController);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        // appBar: AppBar(title: const Text('WebView Test')),
        body: Container(
          margin: EdgeInsets.only(top: 44),
          child: FutureBuilder<WebViewController>(
            future: _initWebViewFuture,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return WebViewWidget(
                  controller: _webViewController,
                );
              } else if (snapshot.hasError) {
                print(snapshot);
                return const Center(
                    child: Text('WebView initalization error.'));
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
        // floatingActionButton: FloatingActionButton.large(
        //   onPressed: () async {
        //     await _webViewController.clearCache();
        //     await _webViewController.loadRequest(_getH5Params(widget.url));
        //   },
        //   child: const Text('Reload'),
        // ),
      );
}
