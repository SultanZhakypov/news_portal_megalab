import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_portal_megalab/feature/widgets/custom_button.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';
import '../../../../main.dart';
import 'app_checkbox.dart';

abstract class AppShows {
  static Future showFilter(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SizedBox(
            height: context.height / 2.2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Фильтрация',
                      style: AppConstants.textBlackw500s18),
                  const SizedBox(height: 5),
                  const AppCheckBox(value: true, title: 'Спорт'),
                  const AppCheckBox(value: false, title: 'Политика'),
                  const AppCheckBox(value: false, title: 'Звезды'),
                  const AppCheckBox(value: false, title: 'Искусство'),
                  const AppCheckBox(value: false, title: 'Мода'),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: double.infinity,
                    child: CustomButtonText(
                      title: 'Применить',
                      onPress: () {},
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

  static showSnackBarUrl(BuildContext context) {
    globalKey.currentState?.showSnackBar(
      SnackBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            side: BorderSide(
              color: AppColors.colorBlack,
            )),
        backgroundColor: AppColors.colorWhite,
        duration: const Duration(minutes: 3),
        content: SizedBox(
          height: context.height / 2.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Поделиться',
                    style: AppConstants.textBlackw500s18,
                  ),
                  IconButton(
                    onPressed: () {
                      globalKey.currentState!.hideCurrentSnackBar();
                    },
                    icon: SvgPicture.asset(Svgs.x),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SocialButtons(
                    svg: Svgs.telegramIcon,
                    onPress: () {},
                  ),
                  SocialButtons(
                    svg: Svgs.twitter,
                    onPress: () {},
                  ),
                  SocialButtons(
                    svg: Svgs.facebookIcon,
                    onPress: () {},
                  ),
                  SocialButtons(
                    svg: Svgs.whatsappIcon,
                    onPress: () {},
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Короткая ссылка',
                style: AppConstants.textBlackw500s18,
              ),
              const SizedBox(height: 10),
              const Flexible(
                child: SnackBarTextField(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SnackBarTextField extends StatelessWidget {
  const SnackBarTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.colorBlack,
      style: AppConstants.textBlackw400s16,
      decoration: InputDecoration(
        hintText: 'Текст ссылки',
        hintStyle: AppConstants.textBlackw400s14,
        suffixIcon: IconButton(
          icon: SvgPicture.asset(Svgs.copy),
          onPressed: () {},
        ),
        fillColor: AppColors.colorBlWhite,
        filled: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 15),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    Key? key,
    required this.svg,
    required this.onPress,
  }) : super(key: key);
  final String svg;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.colorBlWhite,
      radius: 40,
      child: IconButton(
        onPressed: onPress,
        icon: SvgPicture.asset(
          svg,
          height: 25,
        ),
      ),
    );
  }
}
