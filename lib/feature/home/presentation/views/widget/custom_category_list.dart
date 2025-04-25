import 'package:flutter/material.dart';
import 'package:furniture_app/core/constants/constant.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/custom_category.dart';

class CustomCategoryList extends StatefulWidget {
  const CustomCategoryList({super.key});

  @override
  State<CustomCategoryList> createState() => _CustomCategoryListState();
}

class _CustomCategoryListState extends State<CustomCategoryList> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 24),
            child: InkWell(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: ActiveAndInactiveCustomCategory(
                isActive: currentIndex == index,
                categoryModel: categoryList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
