import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/core/assets/app_image.dart';

class CustomBagContainer extends StatelessWidget {
  const CustomBagContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: const ShapeDecoration(
        color: Color(0xffE0E0E0),
        shape: OvalBorder(),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: SvgPicture.asset(Assets.imagesBag, fit: BoxFit.fill),
      ),
    );
  }
}
