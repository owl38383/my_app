import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/router/router.gr.dart';
import 'package:my_app/pages/home/main.dart';

Widget zoomInTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  // you get an animation object and a widget
  // make your own transition
  return ScaleTransition(scale: animation, child: child);
}

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        // 首页
        AutoRoute(
          page: IndexRoute.page,
          path: '/index',
          initial: true,
        ),
        // 欢迎页
        AutoRoute(
          page: WelcomeRoute.page,
          path: '/welcome',
        ),
        // 登录页
        AutoRoute(
          page: SignInRoute.page,
          path: '/sign_in',
        ),
        // webView
        AutoRoute(
          page: WebViewRoute.page,
          path: '/webview',
        ),
        // 主页导航
        AutoRoute(page: MainRoute.page, path: '/main', children: [
          RedirectRoute(path: '', redirectTo: 'home'),
          AutoRoute(page: HomeRoute.page, path: 'home'),
          AutoRoute(page: MessageListRoute.page, path: 'messages'),
          AutoRoute(page: EventListRoute.page, path: 'event'),
          AutoRoute(page: ApplicationRoute.page, path: 'application'),
        ]),
        // 消息详情
        AutoRoute(
          page: MessageSessionRoute.page,
          path: '/session-detail',
        ),
        // 事件详情
        AutoRoute(
          page: EventDetailRoute.page,
          path: '/event-detail',
        ),
        // 设备应用
        AutoRoute(page: DeviceMainRoute.page, path: '/device', children: [
          RedirectRoute(path: '', redirectTo: 'list'),
          AutoRoute(page: DeviceListRoute.page, path: 'list'),
          AutoRoute(page: DeviceDetailRoute.page, path: 'detail'),
        ]),
        // 我的页面
        AutoRoute(page: AccountRoute.page, path: '/account'),
        // 默认匹配
        RedirectRoute(path: '*', redirectTo: '/'),
      ];
}
