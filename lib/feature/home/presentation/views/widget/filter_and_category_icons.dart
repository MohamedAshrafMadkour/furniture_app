import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/core/assets/app_image.dart';

class FilterAndCategoryIcons extends StatelessWidget {
  const FilterAndCategoryIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset(Assets.imagesFilter),
        const SizedBox(width: 16),
        SvgPicture.asset(Assets.imagesCategory),
      ],
    );
  }
}
