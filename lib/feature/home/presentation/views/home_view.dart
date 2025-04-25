import 'package:flutter/material.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/custom_row_bottom_bar.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: CustomRowBottomAppBar(scrollController: scrollController),
      ),
      body: HomeViewBody(scrollController: scrollController),
    );
  }
}
