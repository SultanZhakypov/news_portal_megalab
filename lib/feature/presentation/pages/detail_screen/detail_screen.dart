import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_portal_megalab/core/extension.dart';
import 'package:news_portal_megalab/feature/presentation/pages/detail_screen/widgets/comment_answer_widget.dart';
import 'package:news_portal_megalab/feature/presentation/pages/detail_screen/widgets/comment_textfield.dart';
import 'package:news_portal_megalab/feature/presentation/pages/detail_screen/widgets/comment_widget.dart';
import 'package:news_portal_megalab/feature/presentation/pages/detail_screen/widgets/detail_item_widget.dart';
import 'package:news_portal_megalab/feature/presentation/widgets/footer_widget.dart';
import 'package:news_portal_megalab/resources/app_colors.dart';
import 'package:news_portal_megalab/resources/app_constants.dart';
import 'package:news_portal_megalab/resources/resources.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

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
                )),
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
          padding: const EdgeInsets.only(top: 17, left: 20, right: 20),
          sliver: SliverToBoxAdapter(
            child: Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(Svgs.arrowLeft),
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                const DetailItemWidget(),
                const SizedBox(height: 25),
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(Svgs.share),
                  ),
                ),
                const SizedBox(height: 32),
                const Text('Коментарии',style: AppConstants.textBlackw500s24),
                const SizedBox(height: 25),
                const CommentWidget(),
                const CommentAnswerWidget(),
                const CommentWidget(),
                const CommentTextField(),
              ],
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


