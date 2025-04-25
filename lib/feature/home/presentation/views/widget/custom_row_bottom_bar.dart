import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/go_router.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/custom_bottom_appbar.dart';
import 'package:go_router/go_router.dart';

class CustomRowBottomAppBar extends StatelessWidget {
  const CustomRowBottomAppBar({super.key, required this.scrollController});
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomBottomAppBar(
          icon: Icons.home,
          onPressed: () {
            scrollController.animateTo(
              0,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOutBack,
            );
          },
        ),
        const CustomBottomAppBar(icon: Icons.settings),
        CustomBottomAppBar(
          icon: Icons.search,
          onPressed: () {
            GoRouter.of(context).push(NavigationRouter.kSearchView);
          },
        ),
      ],
    );
  }
}
