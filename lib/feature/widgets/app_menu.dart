import 'package:flutter/material.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';

abstract class AppMenuShow {
  static showSnackBarGlobal(BuildContext context, String message) {
    AppKeys.globalKey.currentState?.showSnackBar(SnackBar(
      backgroundColor: AppColors.colorPurple,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      content: SizedBox(
        height: context.height / 10,
        child: Center(
          child: Text(
            message,
            style: AppConstants.textWhitew500s30,
          ),
        ),
      ),
    ));
  }
}
