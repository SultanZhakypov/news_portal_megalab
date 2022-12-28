// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../../feature/auth/presentation/pages/authorized_screen.dart' as _i2;
import '../../feature/detail/presentation/pages/detail_screen.dart' as _i6;
import '../../feature/home/presentation/pages/home_screen.dart' as _i5;
import '../../feature/like/presentation/pages/liked_screen.dart' as _i4;
import '../../feature/profile/presentation/pages/profile_screen.dart' as _i3;
import '../../feature/register/presentation/pages/unauthorized_screen.dart'
    as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    UnAuthorizedScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.UnAuthorizedScreen(),
      );
    },
    AuthorizedScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.AuthorizedScreen(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ProfileScreen(),
      );
    },
    LikedScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.LikedScreen(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.HomeScreen(),
      );
    },
    DetailScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.DetailScreen(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          UnAuthorizedScreenRoute.name,
          path: '/',
        ),
        _i7.RouteConfig(
          AuthorizedScreenRoute.name,
          path: '/auth',
        ),
        _i7.RouteConfig(
          ProfileScreenRoute.name,
          path: '/profile',
        ),
        _i7.RouteConfig(
          LikedScreenRoute.name,
          path: '/liked',
        ),
        _i7.RouteConfig(
          HomeScreenRoute.name,
          path: '/home',
        ),
        _i7.RouteConfig(
          DetailScreenRoute.name,
          path: '/detail',
        ),
      ];
}

/// generated route for
/// [_i1.UnAuthorizedScreen]
class UnAuthorizedScreenRoute extends _i7.PageRouteInfo<void> {
  const UnAuthorizedScreenRoute()
      : super(
          UnAuthorizedScreenRoute.name,
          path: '/',
        );

  static const String name = 'UnAuthorizedScreenRoute';
}

/// generated route for
/// [_i2.AuthorizedScreen]
class AuthorizedScreenRoute extends _i7.PageRouteInfo<void> {
  const AuthorizedScreenRoute()
      : super(
          AuthorizedScreenRoute.name,
          path: '/auth',
        );

  static const String name = 'AuthorizedScreenRoute';
}

/// generated route for
/// [_i3.ProfileScreen]
class ProfileScreenRoute extends _i7.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: '/profile',
        );

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [_i4.LikedScreen]
class LikedScreenRoute extends _i7.PageRouteInfo<void> {
  const LikedScreenRoute()
      : super(
          LikedScreenRoute.name,
          path: '/liked',
        );

  static const String name = 'LikedScreenRoute';
}

/// generated route for
/// [_i5.HomeScreen]
class HomeScreenRoute extends _i7.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '/home',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i6.DetailScreen]
class DetailScreenRoute extends _i7.PageRouteInfo<void> {
  const DetailScreenRoute()
      : super(
          DetailScreenRoute.name,
          path: '/detail',
        );

  static const String name = 'DetailScreenRoute';
}
