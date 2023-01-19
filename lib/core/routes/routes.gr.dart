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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../../feature/auth/presentation/pages/authorized_screen.dart' as _i3;
import '../../feature/detail/presentation/pages/detail_screen.dart' as _i7;
import '../../feature/home/presentation/pages/home_screen.dart' as _i6;
import '../../feature/home/presentation/pages/search_screen.dart' as _i1;
import '../../feature/like/presentation/pages/liked_screen.dart' as _i5;
import '../../feature/profile/presentation/pages/profile_screen.dart' as _i4;
import '../../feature/register/presentation/pages/unauthorized_screen.dart'
    as _i2;
import 'routes.dart' as _i10;

class AppRouter extends _i8.RootStackRouter {
  AppRouter({
    _i9.GlobalKey<_i9.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i10.AuthGuard authGuard;

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SearchScreenRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.SearchScreen(),
        transitionsBuilder: _i8.TransitionsBuilders.slideTop,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UnAuthorizedScreenRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.UnAuthorizedScreen(),
        transitionsBuilder: _i8.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AuthorizedScreenRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.AuthorizedScreen(),
        transitionsBuilder: _i8.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.ProfileScreen(),
        transitionsBuilder: _i8.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    LikedScreenRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.LikedScreen(),
        transitionsBuilder: _i8.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.HomeScreen(),
        transitionsBuilder: _i8.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<DetailScreenRouteArgs>();
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: _i7.DetailScreen(
          key: args.key,
          id: args.id,
        ),
        transitionsBuilder: _i8.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          SearchScreenRoute.name,
          path: '/search',
        ),
        _i8.RouteConfig(
          UnAuthorizedScreenRoute.name,
          path: '/unauth',
        ),
        _i8.RouteConfig(
          AuthorizedScreenRoute.name,
          path: '/',
          guards: [authGuard],
        ),
        _i8.RouteConfig(
          ProfileScreenRoute.name,
          path: '/profile',
        ),
        _i8.RouteConfig(
          LikedScreenRoute.name,
          path: '/liked',
        ),
        _i8.RouteConfig(
          HomeScreenRoute.name,
          path: '/home',
        ),
        _i8.RouteConfig(
          DetailScreenRoute.name,
          path: '/detail',
        ),
      ];
}

/// generated route for
/// [_i1.SearchScreen]
class SearchScreenRoute extends _i8.PageRouteInfo<void> {
  const SearchScreenRoute()
      : super(
          SearchScreenRoute.name,
          path: '/search',
        );

  static const String name = 'SearchScreenRoute';
}

/// generated route for
/// [_i2.UnAuthorizedScreen]
class UnAuthorizedScreenRoute extends _i8.PageRouteInfo<void> {
  const UnAuthorizedScreenRoute()
      : super(
          UnAuthorizedScreenRoute.name,
          path: '/unauth',
        );

  static const String name = 'UnAuthorizedScreenRoute';
}

/// generated route for
/// [_i3.AuthorizedScreen]
class AuthorizedScreenRoute extends _i8.PageRouteInfo<void> {
  const AuthorizedScreenRoute()
      : super(
          AuthorizedScreenRoute.name,
          path: '/',
        );

  static const String name = 'AuthorizedScreenRoute';
}

/// generated route for
/// [_i4.ProfileScreen]
class ProfileScreenRoute extends _i8.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: '/profile',
        );

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [_i5.LikedScreen]
class LikedScreenRoute extends _i8.PageRouteInfo<void> {
  const LikedScreenRoute()
      : super(
          LikedScreenRoute.name,
          path: '/liked',
        );

  static const String name = 'LikedScreenRoute';
}

/// generated route for
/// [_i6.HomeScreen]
class HomeScreenRoute extends _i8.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '/home',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i7.DetailScreen]
class DetailScreenRoute extends _i8.PageRouteInfo<DetailScreenRouteArgs> {
  DetailScreenRoute({
    _i9.Key? key,
    required int id,
  }) : super(
          DetailScreenRoute.name,
          path: '/detail',
          args: DetailScreenRouteArgs(
            key: key,
            id: id,
          ),
        );

  static const String name = 'DetailScreenRoute';
}

class DetailScreenRouteArgs {
  const DetailScreenRouteArgs({
    this.key,
    required this.id,
  });

  final _i9.Key? key;

  final int id;

  @override
  String toString() {
    return 'DetailScreenRouteArgs{key: $key, id: $id}';
  }
}
