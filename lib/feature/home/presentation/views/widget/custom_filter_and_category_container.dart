import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/core/assets/app_image.dart';
import 'package:furniture_app/core/model/furniture_model/furniture_model.dart';
import 'package:furniture_app/core/utils/go_router.dart';
import 'package:furniture_app/core/utils/styles.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/custom_clip_image.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/custom_list_tile.dart';
import 'package:go_router/go_router.dart';

class CustomFilterAndCategoryContainer extends StatelessWidget {
  const CustomFilterAndCategoryContainer({super.key, required this.category});
  final FurnitureModel category;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(
          context,
        ).push(NavigationRouter.kDetailsView, extra: category);
      },
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * .9,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    SvgPicture.asset(Assets.imagesStar, height: 24),
                    const SizedBox(width: 12),
                    Text(
                      category.id.toString().substring(0, 5),
                      style: Styles.textBold10.copyWith(fontSize: 18),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        Assets.imagesHeartFill,
                        height: 24,
                      ),
                    ),
                  ],
                ),
              ),
              CustomClipImage(category: category),
              CustomListTile(category: category),
            ],
          ),
        ),
      ),
    );
  }
}
