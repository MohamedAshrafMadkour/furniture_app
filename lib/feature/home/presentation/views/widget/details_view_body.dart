import 'package:flutter/material.dart';
import 'package:furniture_app/core/model/furniture_model/furniture_model.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/custom_details_data.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/custom_details_image.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.item});
  final FurnitureModel item;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .3,
            width: MediaQuery.sizeOf(context).width * .5,
            child: CustomDetailsImage(item: item),
          ),
          const SizedBox(height: 55),
          CustomDetailsData(item: item),
        ],
      ),
    );
  }
}
