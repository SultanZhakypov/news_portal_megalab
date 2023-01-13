import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:news_portal_megalab/core/routes/routes.dart';
import 'package:news_portal_megalab/feature/profile/presentation/bloc/get_user/getuser_bloc.dart';
import 'package:news_portal_megalab/feature/profile/presentation/bloc/post_profile/postprofile_bloc.dart';
import 'package:news_portal_megalab/feature/profile/presentation/widgets/app_edit.dart';
import 'package:news_portal_megalab/feature/profile/presentation/widgets/loading_widget.dart';
import 'package:news_portal_megalab/feature/profile/presentation/widgets/profile_edit_widget.dart';
import 'package:news_portal_megalab/feature/widgets/app_menu.dart';
import 'package:news_portal_megalab/feature/widgets/widgets.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';

import '../../../../generated/locale_keys.g.dart';
import '../bloc/get_post/getposts_bloc.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late TextEditingController _title;
  late TextEditingController _shortDesc;
  late TextEditingController _text;
  XFile? image;

  @override
  void initState() {
    _title = TextEditingController();
    _shortDesc = TextEditingController();
    _text = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<PostprofileBloc, PostprofileState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            success: (message) =>
                AppMenuShow.showSnackBarGlobal(context, message),
            error: (message) =>
                AppMenuShow.showSnackBarGlobal(context, message),
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
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
              sliver: BlocBuilder<GetuserBloc, GetuserState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const SliverToBoxAdapter(
                      child: ShimmerLoadingList(),
                    ),
                    error: () => const SliverToBoxAdapter(child: Text('error')),
                    loading: () => const SliverToBoxAdapter(
                        child: CircularProgressIndicator.adaptive()),
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
                      onPress: () => AppEdit.showEdit(
                        image: image,
                        context: context,
                        shortDesc: _shortDesc,
                        text: _text,
                        title: _title,
                      ),
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
                      error: () => const SliverToBoxAdapter(
                        child: Text('error'),
                      ),
                      loading: () => const SliverToBoxAdapter(
                        child: CircularProgressIndicator.adaptive(),
                      ),
                      success: (post) => SliverList(
                        delegate: SliverChildBuilderDelegate(
                          childCount: post.length,
                          (context, index) {
                            return InkWell(
                                onTap: () => context.router.push(
                                    DetailScreenRoute(id: post[index].id)),
                                child: ItemsWidget(posts: post[index]));
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
    );
  }
}
