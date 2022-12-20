import 'package:flutter/material.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';

class ProfileTextFieldWidget extends StatelessWidget {
  const ProfileTextFieldWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppConstants.textBlackw400s14),
          const SizedBox(height: 5),
          SizedBox(
            height: 32,
            child: Expanded(
              child: TextField(
                style: AppConstants.textBlackw400s16,
                cursorColor: AppColors.colorPurple,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: AppColors.colorPurple,
                        width: 2,
                      )),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 2,
                      color: AppColors.colorGrey,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
