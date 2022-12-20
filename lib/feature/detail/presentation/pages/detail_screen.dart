import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_portal_megalab/feature/detail/presentation/widgets/detail_widgets.dart';
import 'package:news_portal_megalab/feature/widgets/footer_widget.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';
import '../../../widgets/appbar_white.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          const SliverAppbarWhite(),
          SliverPadding(
            padding: const EdgeInsets.only(top: 17),
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
          SliverList(
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
                const Text('Коментарии', style: AppConstants.textBlackw500s24),
                const SizedBox(height: 25),
                const CommentWidget(),
                const CommentAnswerWidget(),
                const CommentWidget(),
                const CommentTextField(),
              ],
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
