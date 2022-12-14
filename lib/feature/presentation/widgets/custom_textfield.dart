import 'package:flutter/material.dart';
import 'package:news_portal_megalab/resources/app_colors.dart';

import '../../../resources/app_constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppConstants.textBlackw400s16,
          ),
          const SizedBox(height: 2),
          TextField(
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
  const CustomTextFieldPassword({super.key, required this.title});

  final String title;

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
            widget.title,
            style: AppConstants.textBlackw400s16,
          ),
          const SizedBox(height: 2),
          ValueListenableBuilder(
              valueListenable: _isPasswordVisible,
              builder: (context, _, __) {
                return TextField(
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
              }),
        ],
      ),
    );
  }
}
