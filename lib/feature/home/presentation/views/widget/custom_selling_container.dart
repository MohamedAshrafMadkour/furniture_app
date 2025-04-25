import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/styles.dart';

class CustomSellingContainer extends StatelessWidget {
  const CustomSellingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffF5C900),
      ),
      child: Center(
        child: Text(
          'BUY NOW',
          style: Styles.textSemiBold22.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
