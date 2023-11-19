import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/router/router.gr.dart';
import 'package:my_app/pages/welcome/welcome.dart';

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
    AutoRoute(page: IndexRoute.page,path:'/index',initial: true),
    AutoRoute(page: WelcomeRoute.page,path: '/welcome'),
    AutoRoute(page: SignInRoute.page,path: '/sign_in',),
    RedirectRoute(path: '*', redirectTo: '/'),
  ];
}
