import 'package:flutter/material.dart';
import 'package:furniture_app/core/model/furniture_model/furniture_model.dart';
import 'package:furniture_app/core/utils/styles.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/custom_bag_container.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/custom_selling_container.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/plus_and_mins_icon.dart';

class CustomDetailsData extends StatelessWidget {
  const CustomDetailsData({super.key, required this.item});
  final FurnitureModel item;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height * .53,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name ?? "anonymous name",
                      style: Styles.textRegular20,
                    ),
                    Text(
                      item.category ?? 'anonymous category',
                      style: Styles.textExtraLight17,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'price',
                      style: Styles.textMedium15.copyWith(color: Colors.black),
                    ),
                    Text(
                      '₱ ${item.price.toString()}',
                      style: Styles.textSemiBold22,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32),
            const PlusAndMinsIcons(),
            const SizedBox(height: 32),
            Text(
              'Description',
              style: Styles.textSemiBold17.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              item.description ?? '',
              style: Styles.textSemiBold17,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 16),
            const Expanded(
              child: Row(
                children: [
                  CustomBagContainer(),
                  SizedBox(width: 16),
                  Expanded(child: CustomSellingContainer()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
