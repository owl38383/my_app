// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/cupertino.dart' as _i16;
import 'package:flutter/material.dart' as _i18;
import 'package:my_app/common/entitys/device/device_detail_entity.dart' as _i17;
import 'package:my_app/pages/account/account.dart' as _i1;
import 'package:my_app/pages/application/application.dart' as _i2;
import 'package:my_app/pages/device/detail/device_detail_page.dart' as _i3;
import 'package:my_app/pages/device/list/device_list_page.dart' as _i4;
import 'package:my_app/pages/device/main.dart' as _i5;
import 'package:my_app/pages/home/main.dart' as _i6;
import 'package:my_app/pages/index/index.dart' as _i7;
import 'package:my_app/pages/main/main.dart' as _i8;
import 'package:my_app/pages/message/main.dart' as _i9;
import 'package:my_app/pages/message/pages/message_list_page.dart' as _i10;
import 'package:my_app/pages/message/pages/message_session_page.dart' as _i11;
import 'package:my_app/pages/sign_in/sign_in.dart' as _i12;
import 'package:my_app/pages/webview/webview.dart' as _i13;
import 'package:my_app/pages/welcome/welcome.dart' as _i14;

abstract class $AppRouter extends _i15.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountPage(),
      );
    },
    ApplicationRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ApplicationPage(),
      );
    },
    DeviceDetailRoute.name: (routeData) {
      final args = routeData.argsAs<DeviceDetailRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.DeviceDetailPage(
          key: args.key,
          detailEntity: args.detailEntity,
        ),
      );
    },
    DeviceListRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.DeviceListPage(),
      );
    },
    DeviceMain.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.DeviceMain(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
    IndexRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.IndexPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.MainPage(),
      );
    },
    MessageMain.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.MessageMain(),
      );
    },
    MessageRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.MessagePage(),
      );
    },
    MessageSessionRoute.name: (routeData) {
      final args = routeData.argsAs<MessageSessionRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.MessageSessionPage(
          key: args.key,
          sessionId: args.sessionId,
          sessionType: args.sessionType,
        ),
      );
    },
    SignInRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SignInPage(),
      );
    },
    WebViewRoute.name: (routeData) {
      final args = routeData.argsAs<WebViewRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.WebViewPage(
          url: args.url,
          isReplace: args.isReplace,
        ),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.WelcomePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountPage]
class AccountRoute extends _i15.PageRouteInfo<void> {
  const AccountRoute({List<_i15.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ApplicationPage]
class ApplicationRoute extends _i15.PageRouteInfo<void> {
  const ApplicationRoute({List<_i15.PageRouteInfo>? children})
      : super(
          ApplicationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ApplicationRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DeviceDetailPage]
class DeviceDetailRoute extends _i15.PageRouteInfo<DeviceDetailRouteArgs> {
  DeviceDetailRoute({
    _i16.Key? key,
    required _i17.DeviceDetailEntity detailEntity,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          DeviceDetailRoute.name,
          args: DeviceDetailRouteArgs(
            key: key,
            detailEntity: detailEntity,
          ),
          initialChildren: children,
        );

  static const String name = 'DeviceDetailRoute';

  static const _i15.PageInfo<DeviceDetailRouteArgs> page =
      _i15.PageInfo<DeviceDetailRouteArgs>(name);
}

class DeviceDetailRouteArgs {
  const DeviceDetailRouteArgs({
    this.key,
    required this.detailEntity,
  });

  final _i16.Key? key;

  final _i17.DeviceDetailEntity detailEntity;

  @override
  String toString() {
    return 'DeviceDetailRouteArgs{key: $key, detailEntity: $detailEntity}';
  }
}

/// generated route for
/// [_i4.DeviceListPage]
class DeviceListRoute extends _i15.PageRouteInfo<void> {
  const DeviceListRoute({List<_i15.PageRouteInfo>? children})
      : super(
          DeviceListRoute.name,
          initialChildren: children,
        );

  static const String name = 'DeviceListRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i5.DeviceMain]
class DeviceMain extends _i15.PageRouteInfo<void> {
  const DeviceMain({List<_i15.PageRouteInfo>? children})
      : super(
          DeviceMain.name,
          initialChildren: children,
        );

  static const String name = 'DeviceMain';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i15.PageRouteInfo<void> {
  const HomeRoute({List<_i15.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i7.IndexPage]
class IndexRoute extends _i15.PageRouteInfo<void> {
  const IndexRoute({List<_i15.PageRouteInfo>? children})
      : super(
          IndexRoute.name,
          initialChildren: children,
        );

  static const String name = 'IndexRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i8.MainPage]
class MainRoute extends _i15.PageRouteInfo<void> {
  const MainRoute({List<_i15.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i9.MessageMain]
class MessageMain extends _i15.PageRouteInfo<void> {
  const MessageMain({List<_i15.PageRouteInfo>? children})
      : super(
          MessageMain.name,
          initialChildren: children,
        );

  static const String name = 'MessageMain';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i10.MessagePage]
class MessageRoute extends _i15.PageRouteInfo<void> {
  const MessageRoute({List<_i15.PageRouteInfo>? children})
      : super(
          MessageRoute.name,
          initialChildren: children,
        );

  static const String name = 'MessageRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i11.MessageSessionPage]
class MessageSessionRoute extends _i15.PageRouteInfo<MessageSessionRouteArgs> {
  MessageSessionRoute({
    _i18.Key? key,
    required String sessionId,
    required String sessionType,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          MessageSessionRoute.name,
          args: MessageSessionRouteArgs(
            key: key,
            sessionId: sessionId,
            sessionType: sessionType,
          ),
          initialChildren: children,
        );

  static const String name = 'MessageSessionRoute';

  static const _i15.PageInfo<MessageSessionRouteArgs> page =
      _i15.PageInfo<MessageSessionRouteArgs>(name);
}

class MessageSessionRouteArgs {
  const MessageSessionRouteArgs({
    this.key,
    required this.sessionId,
    required this.sessionType,
  });

  final _i18.Key? key;

  final String sessionId;

  final String sessionType;

  @override
  String toString() {
    return 'MessageSessionRouteArgs{key: $key, sessionId: $sessionId, sessionType: $sessionType}';
  }
}

/// generated route for
/// [_i12.SignInPage]
class SignInRoute extends _i15.PageRouteInfo<void> {
  const SignInRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i13.WebViewPage]
class WebViewRoute extends _i15.PageRouteInfo<WebViewRouteArgs> {
  WebViewRoute({
    required String url,
    required bool isReplace,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          WebViewRoute.name,
          args: WebViewRouteArgs(
            url: url,
            isReplace: isReplace,
          ),
          initialChildren: children,
        );

  static const String name = 'WebViewRoute';

  static const _i15.PageInfo<WebViewRouteArgs> page =
      _i15.PageInfo<WebViewRouteArgs>(name);
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
/// [_i14.WelcomePage]
class WelcomeRoute extends _i15.PageRouteInfo<void> {
  const WelcomeRoute({List<_i15.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}
