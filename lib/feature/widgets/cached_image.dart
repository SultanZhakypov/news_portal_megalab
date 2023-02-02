import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height / 3,
      width: context.width,
      child: CachedNetworkImage(
          imageUrl: '${AppKeys.baseUrl}$imageUrl'.trim(),
          placeholder: (context, url) {
            return Center(
              child: LoadingAnimationWidget.staggeredDotsWave(
                color: AppColors.colorBlack,
                size: 50,
              ),
            );
          },
          imageBuilder: (context, imageProvider) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: imageProvider),
              ),
            );
          },
          errorWidget: (context, url, error) {
            return Center(
              child: SvgPicture.asset(
                Svgs.megalabIconPurple,
              ),
            );
          }),
    );
  }
}





