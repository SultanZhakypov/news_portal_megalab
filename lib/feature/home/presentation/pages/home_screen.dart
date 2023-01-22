import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:news_portal_megalab/feature/home/presentation/bloc/get_all_post_bloc/get_post_list_bloc.dart';
import 'package:news_portal_megalab/feature/home/presentation/widgets/app_shows.dart';
import 'package:news_portal_megalab/feature/widgets/widgets.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';
import '../../../../service_locator.dart' as di;
import '../../../widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          di.sl<GetAllPostBloc>()..add(const GetPostListEvent.getPostsEvent()),
      child: Scaffold(
        key: AppKeys.drawerKey,
        endDrawer: const AppDrawer(),
        body: CustomScrollView(
          physics: const ClampingScrollPhysics(),
          slivers: [
            const SliverAppbarWhite(),
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 20),
              sliver: SliverToBoxAdapter(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () => AppShows.showFilter(context),
                    icon: SvgPicture.asset(Svgs.filterIcon),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
