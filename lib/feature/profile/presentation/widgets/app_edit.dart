import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_portal_megalab/feature/profile/presentation/widgets/custom_dropdown.dart';
import 'package:news_portal_megalab/feature/profile/presentation/widgets/profile_textfield.dart';
import 'package:news_portal_megalab/feature/widgets/custom_button.dart';
import 'package:news_portal_megalab/generated/locale_keys.g.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';

abstract class AppEdit {
  static Future showEdit(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: SizedBox(
              width: context.width / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset(Svgs.x),
                    ),
                  ),
                   Text(
                    LocaleKeys.oblojka_novosti.tr(),
                    style: AppConstants.textBlackw400s14,
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: context.width / 4,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.colorWhite,
                      ),
                      onPressed: () {},
                      child: Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Text(
                              LocaleKeys.download.tr(),
                              style: AppConstants.textBlackw400s14,
                            ),
                            SvgPicture.asset(Svgs.download),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const ProfileTextFieldWidget(title: 'Заголовок'),
                  const ProfileTextFieldWidget(title: 'Краткое описание'),
                  ProfileTextFieldWidget(
                    top: 20,
                    bottom: 20,
                    title: LocaleKeys.text_news.tr(),
                    maxLines: 10,
                    height: context.height / 3,
                  ),
                  const CustomDropdown(),
                  const SizedBox(height: 25),
                  SizedBox(
                    width: context.width,
                    child: CustomButtonText(
                      title: LocaleKeys.create.tr(),
                      onPress: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
