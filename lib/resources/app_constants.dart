import 'package:flutter/material.dart';
import 'package:news_portal_megalab/core/routes/routes.dart';
import 'package:news_portal_megalab/resources/app_colors.dart';

abstract class AppConstants {
  static const textBlackw400s16 = TextStyle(
    color: AppColors.colorBlack,
    fontFamily: 'Ubuntu400',
    fontSize: 16,
  );
  static const textBlackw400s14 = TextStyle(
    color: AppColors.colorBlack,
    fontFamily: 'Ubuntu400',
    fontSize: 14,
  );
  static const textBlackw500s24 = TextStyle(
    color: AppColors.colorBlack,
    fontFamily: 'Ubuntu500',
    fontSize: 24,
  );
  static const textBlackw500s18 = TextStyle(
    color: AppColors.colorBlack,
    fontFamily: 'Ubuntu500',
    fontSize: 18,
  );
  static const textWhitew500s16 = TextStyle(
    color: AppColors.colorWhite,
    fontFamily: 'Ubuntu500',
    fontSize: 16,
  );
  static const textWhitew500s30 = TextStyle(
    color: AppColors.colorWhite,
    fontFamily: 'Ubuntu500',
    fontSize: 26,
  );
  static const textWhitew400s16 = TextStyle(
    color: AppColors.colorWhite,
    fontFamily: 'Ubuntu400',
    fontSize: 16,
  );
  static const textBlackw500s30 = TextStyle(
    color: AppColors.colorBlack,
    fontFamily: 'Ubuntu500',
    fontSize: 30,
  );
  static const textGreyw400s12 = TextStyle(
    color: AppColors.colorGrey,
    fontFamily: 'Ubuntu400',
    fontSize: 12,
  );
  static const textLightGreyw400s16 = TextStyle(
    color: AppColors.colorLightGrey,
    fontFamily: 'Ubuntu400',
    fontSize: 16,
  );
  static const textPurplew400s16 = TextStyle(
    decoration: TextDecoration.underline,
    color: AppColors.colorPurple,
    fontFamily: 'Ubuntu400',
    fontSize: 16,
  );
  static const textBluew400s12 = TextStyle(
    decoration: TextDecoration.underline,
    color: AppColors.colorBlue,
    fontFamily: 'Ubuntu400',
    fontSize: 12,
  );
}

abstract class AppKeys {
  static GlobalKey<ScaffoldMessengerState> globalKey =
      GlobalKey<ScaffoldMessengerState>();

  static final drawerKey = GlobalKey<ScaffoldState>();
 
  

  static final formKey1 = GlobalKey<FormState>();
  static final formKey2 = GlobalKey<FormState>();

  static final appRouter = AppRouter(authGuard: AuthGuard());

  static const baseUrl = 'https://megalab.pythonanywhere.com';

  static const token = 'token';

  static const author = 'author';
}
