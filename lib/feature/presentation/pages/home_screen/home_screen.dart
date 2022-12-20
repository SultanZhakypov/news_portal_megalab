import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_portal_megalab/resources/extension.dart';
import 'package:news_portal_megalab/feature/presentation/widgets/items_widget.dart';
import 'package:news_portal_megalab/feature/presentation/widgets/footer_widget.dart';
import 'package:news_portal_megalab/resources/app_colors.dart';
import 'package:news_portal_megalab/resources/app_constants.dart';
import 'package:news_portal_megalab/resources/resources.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.colorBlack,
            leadingWidth: context.width / 3,
            leading: SvgPicture.asset(
              Svgs.megalabIconWhite,
              fit: BoxFit.scaleDown,
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    Svgs.whiteSearch,
                    height: 20,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    Svgs.whiteProfile,
                    height: 20,
                  )),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  Svgs.whiteMenu,
                  height: 20,
                ),
              ),
            ],
            pinned: true,
            expandedHeight: context.height / 5,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Image.asset(
                Images.appbarBackgroundImage,
                fit: BoxFit.cover,
              ),
              title: const Text(
                'Новости',
                style: AppConstants.textWhitew500s30,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 17),
            sliver: SliverToBoxAdapter(
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(Svgs.filterIcon),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 15,
              (context, index) {
                return const ItemsWidget();
              },
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
