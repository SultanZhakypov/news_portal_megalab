import 'package:auto_route/auto_route.dart';
import 'package:news_portal_megalab/feature/auth/presentation/pages/authorized_screen.dart';
import 'package:news_portal_megalab/feature/detail/presentation/pages/detail_screen.dart';
import 'package:news_portal_megalab/feature/home/presentation/pages/home_screen.dart';
import 'package:news_portal_megalab/feature/like/presentation/pages/liked_screen.dart';
import 'package:news_portal_megalab/feature/profile/presentation/pages/profile_screen.dart';
import 'package:news_portal_megalab/feature/register/presentation/pages/unauthorized_screen.dart';
import 'package:news_portal_megalab/feature/splash/page/splash_screen.dart';

export 'routes.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      page: SplashScreen,
      path: '/',
    ),
    AutoRoute(
      page: UnAuthorizedScreen,
      path: '/unauth',
    ),
    AutoRoute(
      page: AuthorizedScreen,
      path: '/auth',
    ),
    AutoRoute(
      page: ProfileScreen,
      path: '/profile',
    ),
    AutoRoute(
      page: LikedScreen,
      path: '/liked',
    ),
    AutoRoute(
      page: HomeScreen,
      path: '/home',
    ),
    AutoRoute(
      page: DetailScreen,
      path: '/detail',
    ),
  ],
)
class $AppRouter {}
