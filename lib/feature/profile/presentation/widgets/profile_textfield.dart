import 'package:flutter/material.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';

class ProfileTextFieldWidget extends StatelessWidget {
  const ProfileTextFieldWidget({
    Key? key,
    required this.title,
    this.maxLines = 1,
    this.height = 32,
    this.top = 0,
    this.bottom = 0, required this.controller,
  }) : super(key: key);

  final String title;
  final int maxLines;
  final double height, top, bottom;
  final TextEditingController controller;

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
            height: height,
            child: Expanded(
              child: TextField(
                controller: controller,
                maxLines: maxLines,
                style: AppConstants.textBlackw400s16,
                cursorColor: AppColors.colorPurple,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                    right: 15,
                    left: 15,
                    top: top,
                    bottom: bottom,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(
                        color: AppColors.colorPurple,
                        width: 2,
                      )),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
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
