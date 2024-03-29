import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:news_portal_megalab/generated/locale_keys.g.dart';
import 'package:news_portal_megalab/resources/app_colors.dart';
import '../../resources/app_constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.title,
    required this.controller,
  }) : super(key: key);
  final String title;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.tr(),
            style: AppConstants.textBlackw400s16,
          ),
          const SizedBox(height: 2),
          TextFormField(
            validator: (value) =>
                value!.isEmpty ? LocaleKeys.zapolnite_pole.tr() : null,
            controller: controller,
            cursorColor: AppColors.colorPurple,
            textInputAction: TextInputAction.next,
            style: AppConstants.textBlackw400s16,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: AppColors.colorPurple,
                    width: 2,
                  )),
              contentPadding: const EdgeInsets.symmetric(horizontal: 5),
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTextFieldPassword extends StatefulWidget {
  const CustomTextFieldPassword({
    super.key,
    required this.title,
    required this.controller,
    this.validator,
  });

  final String title;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  State<CustomTextFieldPassword> createState() =>
      _CustomTextFieldPasswordState();
}

class _CustomTextFieldPasswordState extends State<CustomTextFieldPassword> {
  final _isPasswordVisible = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title.tr(),
            style: AppConstants.textBlackw400s16,
          ),
          const SizedBox(height: 2),
          ValueListenableBuilder(
            valueListenable: _isPasswordVisible,
            builder: (context, _, __) {
              return TextFormField(
                controller: widget.controller,
                validator: widget.validator,
                cursorColor: AppColors.colorPurple,
                textInputAction: TextInputAction.next,
                style: AppConstants.textBlackw400s16,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      _isPasswordVisible.value = !_isPasswordVisible.value;
                    },
                    icon: Icon(
                      _isPasswordVisible.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: AppColors.colorPurple,
                      width: 2,
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 5),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                obscureText: _isPasswordVisible.value,
              );
            },
          ),
        ],
      ),
    );
  }
}
