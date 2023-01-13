import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:news_portal_megalab/feature/detail/domain/entities/comment_entity.dart';
import 'package:news_portal_megalab/feature/detail/presentation/bloc/comment/comment_bloc.dart';
import 'package:news_portal_megalab/feature/detail/presentation/widgets/detail_widgets.dart';
import 'package:news_portal_megalab/feature/widgets/footer_widget.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../widgets/appbar_white.dart';
import '../bloc/detail/detail_bloc.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<DetailBloc>(context).add(DetailEvent.getDetail(id: id));
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppbarWhite(),
          SliverPadding(
            padding: const EdgeInsets.only(top: 17, right: 20, left: 20),
            sliver: SliverToBoxAdapter(
              child: Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () => context.router.pop(),
                  icon: SvgPicture.asset(Svgs.arrowLeft),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: BlocBuilder<DetailBloc, DetailState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => SliverToBoxAdapter(
                    child: SizedBox(
                      height: context.height,
                      child: Center(
                        child: Text(
                          LocaleKeys.error_state..tr(),
                          style: AppConstants.textBlackw400s16,
                        ),
                      ),
                    ),
                  ),
                  error: () => SliverToBoxAdapter(
                    child: SizedBox(
                      height: context.height,
                      child: Center(
                        child: Text(
                          LocaleKeys.error_state.tr(),
                          style: AppConstants.textBlackw400s16,
                        ),
                      ),
                    ),
                  ),
                  loading: () => SliverToBoxAdapter(
                    child: SizedBox(
                      height: context.height / 1.5,
                      child: Center(
                        child: LoadingAnimationWidget.staggeredDotsWave(
                          color: AppColors.colorBlack,
                          size: 50,
                        ),
                      ),
                    ),
                  ),
                  success: (detailPost) => SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        DetailItemWidget(
                          post: detailPost,
                        ),
                        const SizedBox(height: 25),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(Svgs.share),
                          ),
                        ),
                        const SizedBox(height: 32),
                        Text(LocaleKeys.comments.tr(),
                            style: AppConstants.textBlackw500s24),
                        const SizedBox(height: 25),
                        BlocBuilder<CommentBloc, CommentState>(
                          builder: (context, state) {
                            return state.when(
                              initial: () => const SizedBox.shrink(),
                              error: () => const Text('error'),
                              loading: () =>
                                  const CircularProgressIndicator.adaptive(),
                              success: (comment) => CommentWidget(
                                comment: comment,
                              ),
                            );
                          },
                        ),
                        CommentTextField(
                          id: detailPost.id,
                        ),
                        // const CommentAnswerWidget(),
                      ],
                    ),
                  ),
                );
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
