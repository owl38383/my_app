import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/router/router.gr.dart';
import 'package:my_app/pages/sign_in/sign_in.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<BottomNavigationBarItem> items = [];
  List<PageRouteInfo> routes = [];

  @override
  void initState() {
    super.initState();
    routes = [
      const HomeRoute(),
      const MessageRoute(),
      const ApplicationRoute(),
    ];
    items = [
      const BottomNavigationBarItem(label: '首页', icon: Icon(Icons.home)),
      const BottomNavigationBarItem(label: '消息', icon: Icon(Icons.message)),
      const BottomNavigationBarItem(label: '工作台', icon: Icon(Icons.apps)),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // return ScaffoldWithTabBar(items, routes);
    return ScaffoldWithNavbar(items, routes);
    // return SignInPage();
  }
}

class ScaffoldWithTabBar extends StatelessWidget {
  const ScaffoldWithTabBar(this.items, this.routes, {super.key});

  final List<BottomNavigationBarItem> items;
  final List<PageRouteInfo> routes;

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: routes,
      builder: (context, child, controller) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: AppBar(
            title: Text(context.topRoute.name),
            leading: const AutoLeadingButton(),
            bottom: TabBar(
              controller: controller,
              tabs: const [
                Tab(text: '1', icon: Icon(Icons.abc)),
                Tab(text: '2', icon: Icon(Icons.abc)),
                Tab(text: '3', icon: Icon(Icons.abc)),
                Tab(text: '3', icon: Icon(Icons.abc)),
              ],
            ),
          ),
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: items,
          ),
        );
      },
    );
  }
}

class ScaffoldWithNavbar extends StatelessWidget {
  const ScaffoldWithNavbar(this.items, this.routes, {super.key});

  final List<BottomNavigationBarItem> items;
  final List<PageRouteInfo> routes;

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: routes,
      builder: (context, child, _) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          // appBar: AppBar(
          //   title: Text(context.topRoute.name),
          //   leading: AutoLeadingButton(),
          // ),
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: items,
          ),
        );
      },
    );
  }
}
