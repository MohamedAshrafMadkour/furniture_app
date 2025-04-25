import 'package:flutter/material.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/category_section.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/custom_app_bar.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/featured_section.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/stock_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key, required this.scrollController});
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: const [
        CustomAppBar(),
        SliverToBoxAdapter(child: CategorySection()),
        SliverToBoxAdapter(child: FeaturedSection()),
        SliverToBoxAdapter(child: StockSection()),
      ],
    );
  }
}
