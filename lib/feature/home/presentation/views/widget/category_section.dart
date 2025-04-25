import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/styles.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/custom_category_list.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Explore', style: Styles.textSemiBold20),
          SizedBox(height: 24),
          CustomCategoryList(),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
