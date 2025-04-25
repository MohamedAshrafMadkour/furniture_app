import 'package:flutter/material.dart';
import 'package:furniture_app/core/constants/constant.dart';
import 'package:furniture_app/core/utils/styles.dart';
import 'package:furniture_app/feature/splash/presentation/views/widget/custom_animation_button.dart';

class CustomRegardsContainerBody extends StatelessWidget {
  const CustomRegardsContainerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          kRegards,
          style: Styles.textExtraLight24.copyWith(fontWeight: FontWeight.bold),
          maxLines: 4,
          textAlign: TextAlign.start,
        ),
        const CustomAnimationButton(),
      ],
    );
  }
}
