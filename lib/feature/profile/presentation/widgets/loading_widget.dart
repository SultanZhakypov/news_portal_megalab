import 'package:flutter/material.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoadingList extends StatelessWidget {
  const ShimmerLoadingList({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(milliseconds: 3000),
      baseColor: AppColors.colorWhite,
      highlightColor: AppColors.colorPurple,
      child: SizedBox(
        width: context.width /1.5,
        height: context.height / 4,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(radius: context.height / 15),
                Container(
                  color: AppColors.colorWhite,
                  height: context.height / 40,
                  width: context.width / 15,
                ),
                Container(
                  color: AppColors.colorWhite,
                  height: context.height / 40,
                  width: context.width / 15,
                ),
              ],
            ),
            const SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 2),
                Container(
                  color: Colors.white,
                  height: context.height / 25,
                  width: context.width / 1.6,
                ),
                Container(
                  color: Colors.white,
                  height: context.height / 25,
                  width: context.width / 1.6,
                ),
                Container(
                  color: Colors.white,
                  height: context.height / 25,
                  width: context.width / 1.6,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
