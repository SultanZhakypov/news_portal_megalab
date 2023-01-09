import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_portal_megalab/feature/home/presentation/bloc/search_bloc/search_bloc.dart';
import 'package:news_portal_megalab/feature/home/presentation/widgets/search_appbar.dart';
import 'package:news_portal_megalab/feature/widgets/items_widget.dart';
import 'package:news_portal_megalab/resources/export_resources.dart';

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
    final bloc = BlocProvider.of<SearchBloc>(context);
    bloc.add(const SearchEvent.searchPost(search: '', tag: '', author: ''));
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SearchAppBar(
            controller: _controller,
            hintText: 'Поиск',
            onChanged: (value) {
              bloc.add(SearchEvent.searchPost(
                search: _controller.text,
                tag: '',
                author: '',
              ));
            },
            prefixIcon: true,
            onPressed: () {
              _controller.clear();
              bloc.add(SearchEvent.searchPost(
                  search: '',
                  tag: _controllerTag.text,
                  author: _controllerAuthor.text));
            },
          ),
          SearchAppBar(
            controller: _controllerTag,
            hintText: 'Поиск по тэгу',
            onChanged: (value) {
              bloc.add(
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
              bloc.add(SearchEvent.searchPost(
                  search: _controller.text,
                  tag: '',
                  author: _controllerAuthor.text));
            },
          ),
          SearchAppBar(
            controller: _controllerAuthor,
            hintText: 'Поиск по авторам',
            onChanged: (value) {
              bloc.add(SearchEvent.searchPost(
                search: '',
                tag: '',
                author: _controllerAuthor.text,
              ));
            },
            prefixIcon: false,
            onPressed: () {
              _controllerAuthor.clear();
              bloc.add(SearchEvent.searchPost(
                  search: _controller.text,
                  tag: _controllerTag.text,
                  author: ''));
            },
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => SliverToBoxAdapter(
                    child: SizedBox(
                      height: context.height,
                      width: context.width,
                      child: const Center(
                        child: Text(
                          'Error',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  error: () => SliverToBoxAdapter(
                    child: SizedBox(
                      height: context.height,
                      width: context.width,
                      child: const Center(
                        child: Text(
                          'ERROR',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  loading: () => SliverToBoxAdapter(
                    child: SizedBox(
                      height: context.height,
                      width: context.width,
                      child: const Center(
                        child: CircularProgressIndicator.adaptive(),
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
                              child: const Center(
                                child: Text(
                                  'По вашему запросу ничего не найдено',
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
    );
  }
}
