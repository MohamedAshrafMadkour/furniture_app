import 'package:flutter/material.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/custom_filter_and_category_container_list.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/filter_and_category_icons.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 8, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FilterAndCategoryIcons(),
          SizedBox(height: 24),
          CustomFilterAndCategoryContainerList(),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
