import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:news_portal_megalab/main.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';

import '../../generated/locale_keys.g.dart';

abstract class AppMenuShow {
  static Future showMenu(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SizedBox(
            height: context.height / 6,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 10),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      LocaleKeys.my_profile.tr(),
                      style: AppConstants.textBlackw400s16,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: Divider(),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      LocaleKeys.izbrannye_news.tr(),
                      style: AppConstants.textBlackw400s16,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 2),
                    child: Divider(),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      LocaleKeys.logout.tr(),
                      style: AppConstants.textBlackw400s16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  static showSnackBarGlobal(BuildContext context, String message) {
    globalKey.currentState?.showSnackBar(SnackBar(
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
