import 'package:flutter/material.dart';
import 'package:furniture_app/core/model/furniture_model/furniture_model.dart';
import 'package:furniture_app/core/utils/styles.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.category});
  final FurnitureModel category;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        category.name ?? 'anonymous name',
        style: Styles.textRegular12.copyWith(fontSize: 18),
        maxLines: 2,
      ),
      subtitle: Text(
        "\$ ${category.price.toString()}",
        style: Styles.textRegular12.copyWith(fontSize: 14),
      ),
      trailing: const CircleAvatar(
        radius: 16,
        backgroundColor: Color(0xffF5C900),
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
