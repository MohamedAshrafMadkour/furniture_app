import 'package:flutter/material.dart';

class CustomIconContainer extends StatelessWidget {
  const CustomIconContainer({
    super.key,
    required this.color,
    required this.icon,
    required this.iconColor,
    required this.onTap,
  });
  final Color color, iconColor;
  final IconData icon;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 31,
      height: 32,
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: Colors.black, width: 1),
        ),
      ),
      child: InkWell(onTap: onTap, child: Icon(icon, color: iconColor)),
    );
  }
}
