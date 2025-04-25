import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/feature/home/data/model/category_model.dart';

class ActiveCustomCategory extends StatelessWidget {
  const ActiveCustomCategory({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 200),
      curve: Curves.bounceIn,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xffAABB5D),
        borderRadius: BorderRadius.circular(16),
      ),
      child: SvgPicture.asset(
        height: 50,
        categoryModel.images,
        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
    );
  }
}
