import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_portal_megalab/feature/home/presentation/bloc/bloc/get_post_list_bloc.dart';
import 'package:news_portal_megalab/feature/home/presentation/widgets/app_shows.dart';
import 'package:news_portal_megalab/feature/widgets/widgets.dart';
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
            sliver: BlocBuilder<GetPostListBloc, GetPostListState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => SliverToBoxAdapter(
                    child: SizedBox(
                      height: context.height / 2,
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
                      height: context.height / 2,
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
                      height: context.height / 2,
                      child: const Center(
                        child: CircularProgressIndicator.adaptive(),
                      ),
                    ),
                  ),
                  success: (posts) {
                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: posts.length,
                        (context, index) {
                          return ItemsWidget(
                            posts: posts[index],
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
