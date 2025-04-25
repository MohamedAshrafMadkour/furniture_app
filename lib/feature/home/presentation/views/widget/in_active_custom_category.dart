import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/core/utils/styles.dart';
import 'package:furniture_app/feature/home/data/model/category_model.dart';

class InactiveCustomCategory extends StatelessWidget {
  const InactiveCustomCategory({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: SvgPicture.asset(categoryModel.images, height: 24, width: 24),
        ),
        const SizedBox(height: 6),
        Text(
          categoryModel.title,
          style: Styles.textMedium15.copyWith(color: Colors.black),
        ),
      ],
    );
  }
}
