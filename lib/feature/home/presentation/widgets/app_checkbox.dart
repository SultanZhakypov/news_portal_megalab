import 'package:flutter/material.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';

class AppCheckBox extends StatelessWidget {
  const AppCheckBox({super.key, required this.value, required this.title});

  final bool value;
  final String title;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      contentPadding: EdgeInsets.zero,
      controlAffinity: ListTileControlAffinity.leading,
      title: Text(title, style: AppConstants.textBlackw400s16),
      value: value,
      onChanged: (bool? value) {},
      checkColor: AppColors.colorWhite,
      activeColor: AppColors.colorPurple,
      checkboxShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}