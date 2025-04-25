import 'package:flutter/material.dart';
import 'package:furniture_app/core/model/furniture_model/furniture_model.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/details_view_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.item});
  final FurnitureModel item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
      ),
      body: DetailsViewBody(item: item),
    );
  }
}
