import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/core/assets/app_image.dart';
import 'package:furniture_app/core/model/furniture_model/furniture_model.dart';
import 'package:furniture_app/core/utils/styles.dart';

class CustomOfferDataContainer extends StatelessWidget {
  const CustomOfferDataContainer({super.key, required this.item});
  final FurnitureModel item;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            item.name ?? 'anonymous name ',
            style: Styles.textRegular12.copyWith(fontSize: 20),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text('₱ ${item.price.toString()}', style: Styles.textRegular16),
              const SizedBox(width: 16),
              Text(
                item.discountPrice.toString(),
                style: Styles.textRegular16.copyWith(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(Assets.imagesStar, height: 24),
              const SizedBox(width: 8),
              Text('0', style: Styles.textBold10.copyWith(fontSize: 18)),
              const SizedBox(width: 4),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(Assets.imagesHeartFill, height: 24),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
