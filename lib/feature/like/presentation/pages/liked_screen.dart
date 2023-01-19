import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:news_portal_megalab/feature/like/presentation/bloc/like_bloc.dart';
import 'package:news_portal_megalab/feature/widgets/app_drawer.dart';
import 'package:news_portal_megalab/feature/widgets/widgets.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';
import '../../../../service_locator.dart' as di;
import '../../../../generated/locale_keys.g.dart';

class LikedScreen extends StatelessWidget {
  const LikedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              di.sl<LikeBloc>()..add(const LikeEvent.getLikePost()),
        )
      ],
      child: Scaffold(
        key: AppKeys.drawerKey,
        endDrawer: const AppDrawer(),
        backgroundColor: AppColors.colorWhite,
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              sliver: SliverAppbarPurple(
                title: LocaleKeys.izbrannye.tr(),
                flexibleSpaceParam: true,
              ),
            ),
            BlocBuilder<LikeBloc, LikeState>(
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
                  success: (post) => SliverPadding(
                    padding:
                        const EdgeInsets.only(top: 17, left: 20, right: 20),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: post.length,
                        (context, index) {
                          return ItemsWidget(posts: post[index]);
                        },
                      ),
                    ),
                  ),
                );
              },
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
