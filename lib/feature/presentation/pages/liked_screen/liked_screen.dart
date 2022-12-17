import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_portal_megalab/core/extension.dart';
import 'package:news_portal_megalab/feature/presentation/widgets/items_widget.dart';
import 'package:news_portal_megalab/feature/presentation/widgets/footer_widget.dart';
import 'package:news_portal_megalab/resources/app_colors.dart';
import 'package:news_portal_megalab/resources/app_constants.dart';
import 'package:news_portal_megalab/resources/resources.dart';

class LikedScreen extends StatelessWidget {
  const LikedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.colorWhite,
            leadingWidth: context.width / 3,
            leading: SvgPicture.asset(
              Svgs.megalabIconPurple,
              fit: BoxFit.scaleDown,
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    Svgs.purpleSearch,
                    height: 20,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    Svgs.purpleProfile,
                    height: 20,
                  )),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  Svgs.purpleMenu,
                  height: 20,
                ),
              ),
            ],
            pinned: true,
            expandedHeight: context.height / 5,
            flexibleSpace: const FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                'Избранные',
                style: AppConstants.textBlackw500s30,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 17),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 15,
                (context, index) {
                  return const ItemsWidget();
                },
              ),
            ),
          ),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: FooterWidget(),
          )
        ],
      ),
    );
  }
}
