// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:sample_auto_route_1/main.dart' as _i1;

abstract class $AppRouter extends _i2.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    HomeRouterRoute.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeRouterPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    MypageRoute.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.MypagePage(),
      );
    },
    SelectLoginRegisterRoute.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.SelectLoginRegisterPage(),
      );
    },
    SelectLoginRegisterRouterRoute.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.SelectLoginRegisterRouterPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute({List<_i2.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}

/// generated route for
/// [_i1.HomeRouterPage]
class HomeRouterRoute extends _i2.PageRouteInfo<void> {
  const HomeRouterRoute({List<_i2.PageRouteInfo>? children})
      : super(
          HomeRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouterRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i2.PageRouteInfo<void> {
  const LoginRoute({List<_i2.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}

/// generated route for
/// [_i1.MypagePage]
class MypageRoute extends _i2.PageRouteInfo<void> {
  const MypageRoute({List<_i2.PageRouteInfo>? children})
      : super(
          MypageRoute.name,
          initialChildren: children,
        );

  static const String name = 'MypageRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}

/// generated route for
/// [_i1.SelectLoginRegisterPage]
class SelectLoginRegisterRoute extends _i2.PageRouteInfo<void> {
  const SelectLoginRegisterRoute({List<_i2.PageRouteInfo>? children})
      : super(
          SelectLoginRegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelectLoginRegisterRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}

/// generated route for
/// [_i1.SelectLoginRegisterRouterPage]
class SelectLoginRegisterRouterRoute extends _i2.PageRouteInfo<void> {
  const SelectLoginRegisterRouterRoute({List<_i2.PageRouteInfo>? children})
      : super(
          SelectLoginRegisterRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelectLoginRegisterRouterRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}
