import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_portal_megalab/core/extension.dart';
import 'package:news_portal_megalab/feature/presentation/pages/home_screen/widgets/items_widget.dart';
import 'package:news_portal_megalab/feature/presentation/widgets/footer_widget.dart';
import 'package:news_portal_megalab/resources/app_colors.dart';
import 'package:news_portal_megalab/resources/app_constants.dart';
import 'package:news_portal_megalab/resources/resources.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
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
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 15,
              (context, index) {
                print(index);
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
    );
  }
}
