import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:news_portal_megalab/feature/home/presentation/bloc/search_bloc/search_bloc.dart';
import 'package:news_portal_megalab/feature/home/presentation/widgets/search_appbar.dart';
import 'package:news_portal_megalab/feature/widgets/items_widget.dart';
import 'package:news_portal_megalab/generated/locale_keys.g.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';
import '../../../../service_locator.dart' as di;

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController _controller;
  late TextEditingController _controllerTag;
  late TextEditingController _controllerAuthor;
  @override
  void initState() {
    _controller = TextEditingController();
    _controllerTag = TextEditingController();
    _controllerAuthor = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _controllerTag.dispose();
    _controllerAuthor.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.sl<SearchBloc>()
        ..add(const SearchEvent.searchPost(search: '', tag: '', author: '')),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SearchAppBar(
              controller: _controller,
              hintText: LocaleKeys.search.tr(),
              onChanged: (value) {
                BlocProvider.of<SearchBloc>(context).add(SearchEvent.searchPost(
                  search: _controller.text,
                  tag: '',
                  author: '',
                ));
              },
              prefixIcon: true,
              onPressed: () {
                _controller.clear();
                BlocProvider.of<SearchBloc>(context).add(SearchEvent.searchPost(
                    search: '',
                    tag: _controllerTag.text,
                    author: _controllerAuthor.text));
              },
            ),
            SearchAppBar(
              controller: _controllerTag,
              hintText: LocaleKeys.searchTag.tr(),
              onChanged: (value) {
                BlocProvider.of<SearchBloc>(context).add(
                  SearchEvent.searchPost(
                    search: '',
                    tag: _controllerTag.text,
                    author: '',
                  ),
                );
              },
              prefixIcon: false,
              onPressed: () {
                _controllerTag.clear();
                BlocProvider.of<SearchBloc>(context).add(SearchEvent.searchPost(
                    search: _controller.text,
                    tag: '',
                    author: _controllerAuthor.text));
              },
            ),
            SearchAppBar(
              controller: _controllerAuthor,
              hintText: LocaleKeys.searchAuthor.tr(),
              onChanged: (value) {
                BlocProvider.of<SearchBloc>(context).add(SearchEvent.searchPost(
                  search: '',
                  tag: '',
                  author: _controllerAuthor.text,
                ));
              },
              prefixIcon: false,
              onPressed: () {
                _controllerAuthor.clear();
                BlocProvider.of<SearchBloc>(context).add(SearchEvent.searchPost(
                    search: _controller.text,
                    tag: _controllerTag.text,
                    author: ''));
              },
            ),
            SliverPadding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
              sliver: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => SliverToBoxAdapter(
                      child: SizedBox(
                        height: context.height,
                        width: context.width,
                        child: Center(
                          child: Text(LocaleKeys.error_state.tr(),
                              style: AppConstants.textBlackw400s16),
                        ),
                      ),
                    ),
                    error: (message) => SliverToBoxAdapter(
                      child: SizedBox(
                        height: context.height,
                        width: context.width,
                        child: Center(
                          child: Text(message,
                              style: AppConstants.textBlackw400s16),
                        ),
                      ),
                    ),
                    loading: () => SliverToBoxAdapter(
                      child: SizedBox(
                        height: context.height,
                        width: context.width,
                        child: Center(
                          child: LoadingAnimationWidget.staggeredDotsWave(
                            color: AppColors.colorBlack,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                    success: (posts) {
                      return posts.isNotEmpty
                          ? SliverList(
                              delegate: SliverChildBuilderDelegate(
                                childCount: posts.length,
                                (context, index) {
                                  return ItemsWidget(
                                    posts: posts[index],
                                  );
                                },
                              ),
                            )
                          : SliverToBoxAdapter(
                              child: SizedBox(
                                height: context.height,
                                width: context.width,
                                child: Center(
                                  child: Text(
                                    LocaleKeys.is_empty.tr(),
                                    style: AppConstants.textBlackw400s16,
                                  ),
                                ),
                              ),
                            );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
