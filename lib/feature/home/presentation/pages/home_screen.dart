import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:news_portal_megalab/core/routes/routes.dart';
import 'package:news_portal_megalab/feature/home/presentation/bloc/get_all_post_bloc/get_post_list_bloc.dart';
import 'package:news_portal_megalab/feature/home/presentation/widgets/app_shows.dart';
import 'package:news_portal_megalab/feature/widgets/widgets.dart';
import 'package:news_portal_megalab/generated/locale_keys.g.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
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
                  success: (posts) {
                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: posts.length,
                        (context, index) {
                          return InkWell(
                            onTap: () {
                              context.router
                                  .push(DetailScreenRoute(id: posts[index].id));
                            },
                            child: ItemsWidget(
                              posts: posts[index],
                            ),
                          );
                        },
                      ),
                    );
                  },
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
