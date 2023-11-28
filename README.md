set http_proxy=http://127.0.0.1:10809
set https_proxy=http://127.0.0.1:10809

git config http.proxy http://127.0.0.1:10809
git config https.proxy http://127.0.0.1:10809

# 安装依赖
# 屏幕适配
flutter_screenutil: ^5.9.0
# 下拉刷新
flutter_easyrefresh
# 日期格式
intl
# 路由管理
auto_route

# 路由生成
auto_route_generator

# toast
fluttertoast: ^8.2.4
# http
dio: ^5.3.3
cookie_jar: ^4.0.8
dio_cookie_manager: ^3.1.1

# storage + cache
shared_preferences: ^2.2.2
cached_network_image: ^3.3.0

# 加密
crypto: ^3.0.3
# 设备信息
device_info_plus: ^9.1.0
# 状态管理
provider: ^6.1.1



## auto_router 使用 
`flutter packages pub run build_runner watch`
`flutter packages pub run build_runner build`



### 问题记录
ListView
在flutter开发中，：初始加载数据时，偏离顶部一定距离或者说顶部没有对齐：
padding: const EdgeInsets.only(top: 0),

在嵌套 ListView 时，需要注意内层 ListView 的 shrinkWrap 属性必须为 true，physics 属性必须为 NeverScrollableScrollPhysics。

## 获取屏幕宽度
MediaQuery.of(context).size.width

## flutter 改变数据，showDialog对话框内的UI不更新
(context as Element).markNeedsBuild();

###  滚动到最后一行
scrollToBottom() {
WidgetsBinding.instance.addPostFrameCallback((_) {
_scrollController.animateTo(
_scrollController.position.maxScrollExtent,
duration: Duration(milliseconds: 300),
curve: Curves.easeOut,
);
});
}


$env:PUB_HOSTED_URL = "https://pub.flutter-io.cn"
$env:FLUTTER_STORAGE_BASE_URL = "https://storage.flutter-io.cn"


set PUB_HOSTED_URL=https://pub.flutter-io.cn
set FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn


export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn