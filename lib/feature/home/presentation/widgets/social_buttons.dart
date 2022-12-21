import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_portal_megalab/resources/app_colors.dart';

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
