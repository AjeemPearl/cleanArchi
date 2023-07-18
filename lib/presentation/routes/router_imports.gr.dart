// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:cleanarchi/presentation/screens/auth/widgets/auth_imports.dart'
    as _i1;
import 'package:cleanarchi/presentation/screens/DashBoard/dashboard_imports.dart'
    as _i2;
import 'package:cleanarchi/presentation/screens/onboard/onboard_imports.dart'
    as _i3;
import 'package:cleanarchi/presentation/screens/splash/splash_import.dart'
    as _i4;
import 'package:cleanarchi/presentation/screens/sqlLite/sql_imports.dart'
    as _i5;
import 'package:flutter/cupertino.dart' as _i7;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.Auth(),
      );
    },
    DashBoardRoute.name: (routeData) {
      final args = routeData.argsAs<DashBoardRouteArgs>(
          orElse: () => const DashBoardRouteArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DashBoard(
          key: args.key,
          id: args.id,
        ),
      );
    },
    OnBoardRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.OnBoard(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.Splash(),
      );
    },
    SqlScreenRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.sqlScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.Auth]
class AuthRoute extends _i6.PageRouteInfo<void> {
  const AuthRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DashBoard]
class DashBoardRoute extends _i6.PageRouteInfo<DashBoardRouteArgs> {
  DashBoardRoute({
    _i7.Key? key,
    dynamic id,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          DashBoardRoute.name,
          args: DashBoardRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'DashBoardRoute';

  static const _i6.PageInfo<DashBoardRouteArgs> page =
      _i6.PageInfo<DashBoardRouteArgs>(name);
}

class DashBoardRouteArgs {
  const DashBoardRouteArgs({
    this.key,
    this.id,
  });

  final _i7.Key? key;

  final dynamic id;

  @override
  String toString() {
    return 'DashBoardRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i3.OnBoard]
class OnBoardRoute extends _i6.PageRouteInfo<void> {
  const OnBoardRoute({List<_i6.PageRouteInfo>? children})
      : super(
          OnBoardRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.Splash]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.sqlScreen]
class SqlScreenRoute extends _i6.PageRouteInfo<void> {
  const SqlScreenRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SqlScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SqlScreenRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
