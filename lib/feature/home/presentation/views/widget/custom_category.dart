import 'package:flutter/material.dart';
import 'package:furniture_app/feature/home/data/model/category_model.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/active_custom_category.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/in_active_custom_category.dart';

class ActiveAndInactiveCustomCategory extends StatelessWidget {
  const ActiveAndInactiveCustomCategory({
    super.key,
    required this.categoryModel,
    required this.isActive,
  });
  final bool isActive;
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveCustomCategory(categoryModel: categoryModel)
        : InactiveCustomCategory(categoryModel: categoryModel);
  }
}
