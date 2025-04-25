import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.isPressed,
  });
  final void Function() onPressed;
  final bool isPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        backgroundColor:
            isPressed ? Colors.green.shade700 : const Color(0xffAABB5D),
      ),
      onPressed: onPressed,
      child: const Text('Get Started', style: Styles.textRegular16),
    );
  }
}
