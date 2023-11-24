import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/router/router.gr.dart';

Widget zoomInTransition(
    BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
  // you get an animation object and a widget
  // make your own transition
  return ScaleTransition(scale: animation, child: child);
}

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: IndexRoute.page,
          path: '/index',
          initial: true,
        ),
        AutoRoute(
          page: WelcomeRoute.page,
          path: '/welcome',
        ),
        AutoRoute(
          page: SignInRoute.page,
          path: '/sign_in',
        ),
        AutoRoute(
          page: WebViewRoute.page,
          path: '/webview',
        ),
        AutoRoute(page: MainRoute.page, path: '/main', children: [
          RedirectRoute(path: '', redirectTo: 'home'),
          AutoRoute(page: HomeRoute.page, path: 'home'),
          AutoRoute(page: MessageRoute.page, path: 'message'),
          AutoRoute(page: ApplicationRoute.page, path: 'application'),
        ]),
        AutoRoute(page: AccountRoute.page, path: '/account'),
        RedirectRoute(path: '*', redirectTo: '/'),
      ];
}
