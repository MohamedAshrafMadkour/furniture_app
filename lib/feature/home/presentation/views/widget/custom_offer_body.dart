import 'package:flutter/material.dart';
import 'package:furniture_app/core/model/furniture_model/furniture_model.dart';
import 'package:furniture_app/core/utils/go_router.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/custom_offer_image_container.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/custom_offer_container_data.dart';
import 'package:go_router/go_router.dart';

class CustomOfferBody extends StatelessWidget {
  const CustomOfferBody({super.key, required this.item});
  final FurnitureModel item;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(NavigationRouter.kDetailsView, extra: item);
      },
      child: Row(
        children: [
          CustomOfferImageContainer(item: item),
          const SizedBox(width: 16),
          CustomOfferDataContainer(item: item),
        ],
      ),
    );
  }
}
