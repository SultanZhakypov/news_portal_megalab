import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:news_portal_megalab/feature/home/presentation/bloc/get_all_post_bloc/get_post_list_bloc.dart';
import 'package:news_portal_megalab/feature/widgets/widgets.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';
import '../../../../service_locator.dart' as di;
import '../../../widgets/common_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          di.sl<GetAllPostBloc>()..add(const GetPostListEvent.getPostsEvent()),
      child: CommonScaffold(
        body: CustomScrollView(
          physics: const ClampingScrollPhysics(),
          slivers: [
            const SliverAppbarWhite(),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
              sliver: BlocBuilder<GetAllPostBloc, GetPostListState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => SliverToBoxAdapter(
                      child: SizedBox(
                        height: context.height / 2,
                        child: Center(
                          child: LoadingAnimationWidget.staggeredDotsWave(
                            color: AppColors.colorBlack,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                    error: (message) => SliverToBoxAdapter(
                      child: SizedBox(
                        height: context.height / 2,
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
                        height: context.height / 2,
                        child: Center(
                          child: LoadingAnimationWidget.staggeredDotsWave(
                            color: AppColors.colorBlack,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                    success: (posts) => posts.isEmpty
                        ? SliverToBoxAdapter(
                            child: SizedBox(
                              height: context.height / 2,
                              child: const Center(
                                  child: Text(
                                'Пусто',
                                style: AppConstants.textBlackw400s16,
                              )),
                            ),
                          )
                        : SliverList(
                            delegate: SliverChildBuilderDelegate(
                              childCount: posts.length,
                              (context, index) {
                                return ItemsWidget(
                                  posts: posts[index],
                                );
                              },
                            ),
                          ),
                  );
                },
              ),
            ),
            const SliverFillRemaining(
              fillOverscroll: true,
              hasScrollBody: false,
              child: FooterWidget(),
            )
          ],
        ),
      ),
    );
  }
}
