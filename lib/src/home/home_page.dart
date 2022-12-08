import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manga_webtoon/src/home/components/bottom_bar_widget.dart';
import 'package:manga_webtoon/src/home/components/carousel_widget.dart';
import 'package:manga_webtoon/src/home/components/home_app_bar_widget.dart';
import 'package:manga_webtoon/src/home/components/most_popular_card_widget.dart';

import 'components/cart_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Stack(
        alignment: Alignment.center,
        children: [
          ListView(
            children: [
              CarouselWidget(
                title: "Most Popular",
                height: size.height * 0.26,
                children: [
                  MostPopularCardWidget(
                    imageUrl: 'assets/images/most_popular1.png',
                    title: 'One Piece',
                    chapters: 1067,
                    rating: 7.9,
                    onTap: () => onTapCard(context),
                  ),
                  MostPopularCardWidget(
                    imageUrl: 'assets/images/most_popular2.png',
                    title: 'Haikyuu',
                    chapters: 1067,
                    rating: 7.9,
                    onTap: () => onTapCard(context),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              CarouselWidget(
                title: "Recent Release",
                height: size.height * 0.26,
                onSeeMore: () {},
                children: [
                  CardWidget(
                    imageUrl: 'assets/images/recent1.png',
                    title: 'Jujutsu Kiasen',
                    onTap: () => onTapCard(context),
                  ),
                  CardWidget(
                    imageUrl: 'assets/images/recent2.png',
                    title: 'My Hero Academia',
                    onTap: () => onTapCard(context),
                  ),
                  CardWidget(
                    imageUrl: 'assets/images/recent3.png',
                    title: 'Solo Leveling',
                    onTap: () => onTapCard(context),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              CarouselWidget(
                title: "Coming Soon",
                height: size.height * 0.26,
                onSeeMore: () {},
                children: [
                  CardWidget(
                    imageUrl: 'assets/images/coming_soon1.png',
                    title: 'Jujutsu Kiasen',
                    onTap: () => onTapCard(context),
                  ),
                  CardWidget(
                    imageUrl: 'assets/images/coming_soon2.png',
                    title: 'My Hero Academia',
                    onTap: () => onTapCard(context),
                  ),
                  CardWidget(
                    imageUrl: 'assets/images/coming_soon3.png',
                    title: 'Solo Leveling',
                    onTap: () => onTapCard(context),
                  ),
                ],
              ),
            ],
          ),
          BottomBarWidget(
            items: [
              BottomBarItem(
                icon: Icons.home_outlined,
                onTap: () {},
              ),
              BottomBarItem(
                icon: Icons.favorite_border,
                onTap: () {},
              ),
              BottomBarItem(
                icon: Icons.explore_outlined,
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  void onTapCard(BuildContext context) {
    GoRouter.of(context).push('/detail');
  }
}
