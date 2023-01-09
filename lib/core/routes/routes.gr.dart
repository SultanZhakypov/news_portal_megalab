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
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../../feature/auth/presentation/pages/authorized_screen.dart' as _i4;
import '../../feature/detail/presentation/pages/detail_screen.dart' as _i8;
import '../../feature/global/page/global.dart' as _i1;
import '../../feature/home/presentation/pages/home_screen.dart' as _i7;
import '../../feature/home/presentation/pages/search_screen.dart' as _i2;
import '../../feature/like/presentation/pages/liked_screen.dart' as _i6;
import '../../feature/profile/presentation/pages/profile_screen.dart' as _i5;
import '../../feature/register/presentation/pages/unauthorized_screen.dart'
    as _i3;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    GlobalWidgetRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.GlobalWidget(),
      );
    },
    SearchScreenRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.SearchScreen(),
        transitionsBuilder: _i9.TransitionsBuilders.slideBottom,
        opaque: true,
        barrierDismissible: false,
      );
    },
    UnAuthorizedScreenRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.UnAuthorizedScreen(),
        transitionsBuilder: _i9.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    AuthorizedScreenRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.AuthorizedScreen(),
        transitionsBuilder: _i9.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.ProfileScreen(),
        transitionsBuilder: _i9.TransitionsBuilders.zoomIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    LikedScreenRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.LikedScreen(),
        transitionsBuilder: _i9.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.HomeScreen(),
        transitionsBuilder: _i9.TransitionsBuilders.zoomIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DetailScreenRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i8.DetailScreen(),
        transitionsBuilder: _i9.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          GlobalWidgetRoute.name,
          path: '/',
        ),
        _i9.RouteConfig(
          SearchScreenRoute.name,
          path: '/search',
        ),
        _i9.RouteConfig(
          UnAuthorizedScreenRoute.name,
          path: '/unauth',
        ),
        _i9.RouteConfig(
          AuthorizedScreenRoute.name,
          path: '/auth',
        ),
        _i9.RouteConfig(
          ProfileScreenRoute.name,
          path: '/profile',
        ),
        _i9.RouteConfig(
          LikedScreenRoute.name,
          path: '/liked',
        ),
        _i9.RouteConfig(
          HomeScreenRoute.name,
          path: '/home',
        ),
        _i9.RouteConfig(
          DetailScreenRoute.name,
          path: '/detail',
        ),
      ];
}

/// generated route for
/// [_i1.GlobalWidget]
class GlobalWidgetRoute extends _i9.PageRouteInfo<void> {
  const GlobalWidgetRoute()
      : super(
          GlobalWidgetRoute.name,
          path: '/',
        );

  static const String name = 'GlobalWidgetRoute';
}

/// generated route for
/// [_i2.SearchScreen]
class SearchScreenRoute extends _i9.PageRouteInfo<void> {
  const SearchScreenRoute()
      : super(
          SearchScreenRoute.name,
          path: '/search',
        );

  static const String name = 'SearchScreenRoute';
}

/// generated route for
/// [_i3.UnAuthorizedScreen]
class UnAuthorizedScreenRoute extends _i9.PageRouteInfo<void> {
  const UnAuthorizedScreenRoute()
      : super(
          UnAuthorizedScreenRoute.name,
          path: '/unauth',
        );

  static const String name = 'UnAuthorizedScreenRoute';
}

/// generated route for
/// [_i4.AuthorizedScreen]
class AuthorizedScreenRoute extends _i9.PageRouteInfo<void> {
  const AuthorizedScreenRoute()
      : super(
          AuthorizedScreenRoute.name,
          path: '/auth',
        );

  static const String name = 'AuthorizedScreenRoute';
}

/// generated route for
/// [_i5.ProfileScreen]
class ProfileScreenRoute extends _i9.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: '/profile',
        );

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [_i6.LikedScreen]
class LikedScreenRoute extends _i9.PageRouteInfo<void> {
  const LikedScreenRoute()
      : super(
          LikedScreenRoute.name,
          path: '/liked',
        );

  static const String name = 'LikedScreenRoute';
}

/// generated route for
/// [_i7.HomeScreen]
class HomeScreenRoute extends _i9.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '/home',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i8.DetailScreen]
class DetailScreenRoute extends _i9.PageRouteInfo<void> {
  const DetailScreenRoute()
      : super(
          DetailScreenRoute.name,
          path: '/detail',
        );

  static const String name = 'DetailScreenRoute';
}
