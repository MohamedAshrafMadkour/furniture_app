import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/core/assets/app_image.dart';
import 'package:furniture_app/core/utils/go_router.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: IconButton(
            onPressed: () {
              GoRouter.of(context).push(NavigationRouter.kSearchView);
            },
            icon: SvgPicture.asset(Assets.imagesSearch, width: 24),
          ),
        ),
      ],
    );
  }
}
