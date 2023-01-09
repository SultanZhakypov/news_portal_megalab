import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../resources/export_resources.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({
    Key? key,
    required TextEditingController controller,
    required this.hintText,
    required this.prefixIcon,
    required this.onChanged,
    required this.onPressed,
  })  : _controller = controller,
        super(key: key);

  final TextEditingController _controller;
  final String hintText;
  final bool prefixIcon;
  final ValueChanged<String>? onChanged;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.colorWhite,
      title: TextField(
        controller: _controller,
        cursorColor: AppColors.colorBlack,
        style: AppConstants.textBlackw400s16,
        onChanged: onChanged,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppColors.colorBlack,
              width: 1,
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
          hintText: hintText,
          hintStyle: AppConstants.textBlackw400s16,
          prefixIcon: prefixIcon
              ? IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: AppColors.colorBlack,
                  ),
                  onPressed: () {
                    context.router.pop();
                  },
                )
              : const Icon(
                  Icons.search,
                  color: AppColors.colorBlack,
                ),
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.clear,
              color: AppColors.colorBlack,
            ),
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}
