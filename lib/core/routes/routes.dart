import 'package:auto_route/auto_route.dart';
import 'package:news_portal_megalab/feature/auth/presentation/pages/authorized_screen.dart';
import 'package:news_portal_megalab/feature/detail/presentation/pages/detail_screen.dart';
import 'package:news_portal_megalab/feature/global/page/global.dart';
import 'package:news_portal_megalab/feature/home/presentation/pages/home_screen.dart';
import 'package:news_portal_megalab/feature/home/presentation/pages/search_screen.dart';
import 'package:news_portal_megalab/feature/like/presentation/pages/liked_screen.dart';
import 'package:news_portal_megalab/feature/profile/presentation/pages/profile_screen.dart';
import 'package:news_portal_megalab/feature/register/presentation/pages/unauthorized_screen.dart';

export 'routes.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      page: GlobalWidget,
      path: '/',
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.slideTop,
      page: SearchScreen,
      path: '/search',
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      page: UnAuthorizedScreen,
      path: '/unauth',
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      page: AuthorizedScreen,
      path: '/auth',
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      page: ProfileScreen,
      path: '/profile',
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      page: LikedScreen,
      path: '/liked',
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      page: HomeScreen,
      path: '/home',
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      page: DetailScreen,
      path: '/detail',
    ),
  ],
)
class $AppRouter {}
