import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/router/router.gr.dart';
import 'package:my_app/pages/home/home.dart';
import 'package:my_app/pages/sign_in/sign_in.dart';
import 'package:my_app/pages/welcome/welcome.dart';



AutoTabsScaffold appBottom() {
  return AutoTabsScaffold(
    routes: const [
      HomeRoute(),
      WelcomeRoute(),
      SignInRoute(),
    ],
    bottomNavigationBuilder: (_, tabsRouter) {
      return BottomNavigationBar(
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: '商城'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: '课程'),
        ],
      );
    },
  );
}


