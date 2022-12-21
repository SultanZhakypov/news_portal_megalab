import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../resources/export_resources.dart';

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
