import 'package:auto_route/auto_route.dart';
import 'package:news_portal_megalab/core/platform/prefs_settings.dart';
import 'package:news_portal_megalab/core/routes/routes.gr.dart';
import 'package:news_portal_megalab/feature/auth/presentation/pages/authorized_screen.dart';
import 'package:news_portal_megalab/feature/detail/presentation/pages/detail_screen.dart';
import 'package:news_portal_megalab/feature/home/presentation/pages/home_screen.dart';
import 'package:news_portal_megalab/feature/home/presentation/pages/search_screen.dart';
import 'package:news_portal_megalab/feature/like/presentation/pages/liked_screen.dart';
import 'package:news_portal_megalab/feature/profile/presentation/pages/profile_screen.dart';
import 'package:news_portal_megalab/feature/register/presentation/pages/unauthorized_screen.dart';
import 'package:news_portal_megalab/resources/app_constants.dart';

export 'routes.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
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
      guards: [AuthGuard],
      transitionsBuilder: TransitionsBuilders.fadeIn,
      page: AuthorizedScreen,
      initial: true,
      path: '/',
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

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final token = await SharedPrefs.getData(AppKeys.token);

    if (token == null) {
      resolver.next();
    } else {
      router.push(const HomeScreenRoute());
    }
  }
}
