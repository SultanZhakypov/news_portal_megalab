import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_portal_megalab/feature/profile/presentation/bloc/get_user/getuser_bloc.dart';
import 'package:news_portal_megalab/feature/profile/presentation/widgets/app_edit.dart';
import 'package:news_portal_megalab/feature/profile/presentation/widgets/loading_widget.dart';
import 'package:news_portal_megalab/feature/profile/presentation/widgets/profile_edit_widget.dart';
import 'package:news_portal_megalab/feature/widgets/app_menu.dart';
import 'package:news_portal_megalab/feature/widgets/widgets.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';

import '../../../../generated/locale_keys.g.dart';
import '../bloc/get_post/getposts_bloc.dart';
import '../bloc/post_profile/postprofile_bloc.dart';
import '../bloc/put_user/put_user_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<PostprofileBloc, PostprofileState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            error: (message) =>
                AppMenuShow.showSnackBarGlobal(context, message),
            success: (message) {
              AppMenuShow.showSnackBarGlobal(context, message);
              BlocProvider.of<GetpostsBloc>(context)
                  .add(const GetpostsEvent.getPosts());
            },
          );
        },
        child: BlocListener<PutUserBloc, PutUserState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              error: (message) =>
                  AppMenuShow.showSnackBarGlobal(context, message),
              success: (message) {
                AppMenuShow.showSnackBarGlobal(context, message);
                BlocProvider.of<GetuserBloc>(context)
                    .add(const GetuserEvent.getUser());
              },
            );
          },
          child: CustomScrollView(
            slivers: [
              const SliverPadding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                sliver: SliverAppbarPurple(
                  title: '',
                  flexibleSpaceParam: false,
                ),
              ),
              SliverPadding(
                padding:
                    const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
                sliver: BlocBuilder<GetuserBloc, GetuserState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => const SliverToBoxAdapter(
                        child: ShimmerLoadingList(),
                      ),
                      error: () => const SliverToBoxAdapter(
                          child: Center(child: Text('error'))),
                      loading: () => const SliverToBoxAdapter(
                        child: ShimmerLoadingList(),
                      ),
                      success: (user) => SliverProfileEditWidget(user: user),
                    );
                  },
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                sliver: SliverToBoxAdapter(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        LocaleKeys.my_posts.tr(),
                        style: AppConstants.textBlackw500s24,
                      ),
                      CustomButtonSvg(
                        svg: Svgs.plus,
                        onPress: () => AppPostDialog.showPost(context),
                      ),
                    ],
                  ),
                ),
              ),
              SliverPadding(
                  padding: const EdgeInsets.only(top: 17, right: 20, left: 20),
                  sliver: BlocBuilder<GetpostsBloc, GetpostsState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => SliverToBoxAdapter(
                          child: SizedBox(height: context.height / 2),
                        ),
                        error: () => SliverToBoxAdapter(
                          child: SizedBox(
                            height: context.height / 2,
                            width: context.width,
                            child: const Center(child: Text('error')),
                          ),
                        ),
                        loading: () => SliverToBoxAdapter(
                          child: SizedBox(
                              width: context.width,
                              height: context.height / 2,
                              child: const Center(
                                  child: CircularProgressIndicator.adaptive())),
                        ),
                        success: (post) => SliverList(
                          delegate: SliverChildBuilderDelegate(
                            childCount: post.length,
                            (context, index) {
                              return ItemsWidget(posts: post[index]);
                            },
                          ),
                        ),
                      );
                    },
                  )),
              const SliverFillRemaining(
                hasScrollBody: false,
                child: FooterWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
