import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:news_portal_megalab/feature/detail/presentation/bloc/comment/comment_bloc.dart';
import 'package:news_portal_megalab/feature/detail/presentation/widgets/detail_widgets.dart';
import 'package:news_portal_megalab/feature/widgets/app_menu.dart';
import 'package:news_portal_megalab/feature/widgets/footer_widget.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';
import '../../../../generated/locale_keys.g.dart';
import '../../../widgets/appbar_white.dart';
import '../../../widgets/common_scaffold.dart';
import '../bloc/comment_reply/comment_reply_bloc.dart';
import '../bloc/detail/detail_bloc.dart';
import '../../../../service_locator.dart' as di;

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              di.sl<DetailBloc>()..add(DetailEvent.getDetail(id: id)),
        ),
        BlocProvider(
          create: (context) => di.sl<CommentBloc>(),
        ),
        BlocProvider(
          create: (context) => di.sl<CommentReplyBloc>(),
        ),
      ],
      child: CommonScaffold(
        body: CustomScrollView(
          physics: const ClampingScrollPhysics(),
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
              sliver: BlocListener<CommentBloc, CommentState>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () {},
                    success: () {
                      BlocProvider.of<DetailBloc>(context)
                          .add(DetailEvent.getDetail(id: id));
                    },
                  );
                },
                child: BlocListener<CommentReplyBloc, CommentReplyState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      orElse: () {},
                      error: (message) =>
                          AppMenuShow.showSnackBarGlobal(context, message),
                      success: () => BlocProvider.of<DetailBloc>(context)
                          .add(DetailEvent.getDetail(id: id)),
                    );
                  },
                  child: BlocBuilder<DetailBloc, DetailState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => SliverToBoxAdapter(
                          child: SizedBox(
                            height: context.height / 1.5,
                            child: Center(
                              child: Text(
                                LocaleKeys.error_state..tr(),
                                style: AppConstants.textBlackw400s16,
                              ),
                            ),
                          ),
                        ),
                        error: (message) => SliverToBoxAdapter(
                          child: SizedBox(
                            height: context.height / 1.5,
                            child: Center(
                              child: Text(
                                message,
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
                              DetailItemWidget(post: detailPost),
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
                              ListView.separated(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: detailPost.comment.length,
                                separatorBuilder: (context, index) =>
                                    const SizedBox(height: 15),
                                itemBuilder: (context, index) => CommentWidget(
                                  comment: detailPost.comment[index],
                                  id: detailPost.id,
                                ),
                              ),
                              CommentTextField(
                                id: detailPost.id,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            const SliverFillRemaining(
              hasScrollBody: false,
              child: FooterWidget(),
            )
          ],
        ),
      ),
    );
  }
}
