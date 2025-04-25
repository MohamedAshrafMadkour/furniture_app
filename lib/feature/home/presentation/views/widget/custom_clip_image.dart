import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/core/model/furniture_model/furniture_model.dart';
import 'package:furniture_app/core/widget/custom_indactor.dart';

class CustomClipImage extends StatelessWidget {
  const CustomClipImage({super.key, required this.category});
  final FurnitureModel category;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 8.2 / 4,
      child: ClipRRect(
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl:
              category.imagePath ??
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeG8eNGIrLcY_4JsLdQS_GmbtCrsh-PvXWaQ&s',
          placeholder: (context, url) => const IndicatorLoading(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
