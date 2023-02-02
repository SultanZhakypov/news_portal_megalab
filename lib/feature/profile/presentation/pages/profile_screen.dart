import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:news_portal_megalab/feature/profile/presentation/bloc/get_user/getuser_bloc.dart';
import 'package:news_portal_megalab/feature/profile/presentation/widgets/app_edit.dart';
import 'package:news_portal_megalab/feature/profile/presentation/widgets/items_profile.dart';
import 'package:news_portal_megalab/feature/profile/presentation/widgets/loading_widget.dart';
import 'package:news_portal_megalab/feature/profile/presentation/widgets/profile_edit_widget.dart';
import 'package:news_portal_megalab/feature/widgets/app_menu.dart';
import 'package:news_portal_megalab/feature/widgets/widgets.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';
import '../../../../service_locator.dart' as di;
import '../../../../generated/locale_keys.g.dart';
import '../../../widgets/common_scaffold.dart';
import '../bloc/delete_post/delete_post_bloc.dart';
import '../bloc/get_post/getposts_bloc.dart';
import '../bloc/post_profile/postprofile_bloc.dart';
import '../bloc/put_user/put_user_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.sl<PostprofileBloc>(),
        ),
        BlocProvider(
          create: (context) =>
              di.sl<GetuserBloc>()..add(const GetuserEvent.getUser()),
        ),
        BlocProvider(
          create: (context) =>
              di.sl<GetpostsBloc>()..add(const GetpostsEvent.getPosts()),
        ),
        BlocProvider(
          create: (context) => di.sl<PutUserBloc>(),
        ),
        BlocProvider(
          create: (context) => di.sl<DeletePostBloc>(),
        ),
      ],
      child: Builder(builder: (context) {
        return CommonScaffold(
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
              child: BlocListener<DeletePostBloc, DeletePostState>(
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
                child: CustomScrollView(
                  physics: const ClampingScrollPhysics(),
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 32, horizontal: 20),
                      sliver: BlocBuilder<GetuserBloc, GetuserState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            orElse: () => const SliverToBoxAdapter(
                              child: ShimmerLoadingList(),
                            ),
                            error: (message) => SliverToBoxAdapter(
                                child: Center(child: Text(message))),
                            loading: () => const SliverToBoxAdapter(
                              child: ShimmerLoadingList(),
                            ),
                            success: (user) =>
                                SliverProfileEditWidget(user: user),
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
                      padding:
                          const EdgeInsets.only(top: 17, right: 20, left: 20),
                      sliver: BlocBuilder<GetpostsBloc, GetpostsState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            orElse: () => SliverToBoxAdapter(
                              child: SizedBox(
                                  width: context.width,
                                  height: context.height / 4,
                                  child: Center(
                                    child: LoadingAnimationWidget
                                        .staggeredDotsWave(
                                      color: AppColors.colorBlack,
                                      size: 50,
                                    ),
                                  )),
                            ),
                            error: (message) => SliverToBoxAdapter(
                              child: SizedBox(
                                height: context.height / 4,
                                width: context.width,
                                child: Center(
                                    child: Text(
                                  message,
                                  style: AppConstants.textBlackw400s16,
                                )),
                              ),
                            ),
                            loading: () => SliverToBoxAdapter(
                              child: SizedBox(
                                  width: context.width,
                                  height: context.height / 4,
                                  child: Center(
                                    child: LoadingAnimationWidget
                                        .staggeredDotsWave(
                                      color: AppColors.colorBlack,
                                      size: 50,
                                    ),
                                  )),
                            ),
                            success: (post) => post.isEmpty
                                ? SliverToBoxAdapter(
                                    child: SizedBox(
                                      height: context.height / 4,
                                      child: const Center(
                                        child: Text(
                                          'Пусто',
                                          style: AppConstants.textBlackw400s16,
                                        ),
                                      ),
                                    ),
                                  )
                                : SliverList(
                                    delegate: SliverChildBuilderDelegate(
                                      childCount: post.length,
                                      (context, index) {
                                        return ItemsProfileWidget(
                                            post: post[index]);
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
            ),
          ),
        );
      }),
    );
  }
}
