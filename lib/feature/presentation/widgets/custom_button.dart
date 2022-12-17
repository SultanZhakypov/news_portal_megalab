import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_portal_megalab/resources/app_colors.dart';
import 'package:news_portal_megalab/resources/app_constants.dart';

class CustomButtonText extends StatelessWidget {
  const CustomButtonText(
      {super.key, required this.title, required this.onPress});

  final String title;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 30),
          backgroundColor: AppColors.colorPurple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      onPressed: () {},
      child: Text(title, style: AppConstants.textWhitew500s16),
    );
  }
}

class CustomButtonSvg extends StatelessWidget {
  const CustomButtonSvg({
    Key? key,
    required this.svg,
    required this.onPress,
  }) : super(key: key);
  final String svg;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.colorPurple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onPress,
      child: SvgPicture.asset(
        svg,
      ),
    );
  }
}
