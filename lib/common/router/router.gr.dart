// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:my_app/pages/account/account.dart' as _i1;
import 'package:my_app/pages/application/application.dart' as _i2;
import 'package:my_app/pages/device/detail.dart' as _i3;
import 'package:my_app/pages/home/main.dart' as _i4;
import 'package:my_app/pages/index/index.dart' as _i5;
import 'package:my_app/pages/main/main.dart' as _i6;
import 'package:my_app/pages/message/message.dart' as _i7;
import 'package:my_app/pages/sign_in/sign_in.dart' as _i8;
import 'package:my_app/pages/webview/webview.dart' as _i9;
import 'package:my_app/pages/welcome/welcome.dart' as _i10;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountPage(),
      );
    },
    ApplicationRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ApplicationPage(),
      );
    },
    DeviceDetailRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DeviceDetailPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    IndexRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.IndexPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MainPage(),
      );
    },
    MessageRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.MessagePage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SignInPage(),
      );
    },
    WebViewRoute.name: (routeData) {
      final args = routeData.argsAs<WebViewRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.WebViewPage(
          url: args.url,
          isReplace: args.isReplace,
        ),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.WelcomePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountPage]
class AccountRoute extends _i11.PageRouteInfo<void> {
  const AccountRoute({List<_i11.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ApplicationPage]
class ApplicationRoute extends _i11.PageRouteInfo<void> {
  const ApplicationRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ApplicationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ApplicationRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DeviceDetailPage]
class DeviceDetailRoute extends _i11.PageRouteInfo<void> {
  const DeviceDetailRoute({List<_i11.PageRouteInfo>? children})
      : super(
          DeviceDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'DeviceDetailRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.IndexPage]
class IndexRoute extends _i11.PageRouteInfo<void> {
  const IndexRoute({List<_i11.PageRouteInfo>? children})
      : super(
          IndexRoute.name,
          initialChildren: children,
        );

  static const String name = 'IndexRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.MainPage]
class MainRoute extends _i11.PageRouteInfo<void> {
  const MainRoute({List<_i11.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MessagePage]
class MessageRoute extends _i11.PageRouteInfo<void> {
  const MessageRoute({List<_i11.PageRouteInfo>? children})
      : super(
          MessageRoute.name,
          initialChildren: children,
        );

  static const String name = 'MessageRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SignInPage]
class SignInRoute extends _i11.PageRouteInfo<void> {
  const SignInRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.WebViewPage]
class WebViewRoute extends _i11.PageRouteInfo<WebViewRouteArgs> {
  WebViewRoute({
    required String url,
    required bool isReplace,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          WebViewRoute.name,
          args: WebViewRouteArgs(
            url: url,
            isReplace: isReplace,
          ),
          initialChildren: children,
        );

  static const String name = 'WebViewRoute';

  static const _i11.PageInfo<WebViewRouteArgs> page =
      _i11.PageInfo<WebViewRouteArgs>(name);
}

class WebViewRouteArgs {
  const WebViewRouteArgs({
    required this.url,
    required this.isReplace,
  });

  final String url;

  final bool isReplace;

  @override
  String toString() {
    return 'WebViewRouteArgs{url: $url, isReplace: $isReplace}';
  }
}

/// generated route for
/// [_i10.WelcomePage]
class WelcomeRoute extends _i11.PageRouteInfo<void> {
  const WelcomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
