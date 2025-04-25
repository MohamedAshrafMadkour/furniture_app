import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/styles.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/custom_icon_container.dart';

class PlusAndMinsIcons extends StatefulWidget {
  const PlusAndMinsIcons({super.key});

  @override
  State<PlusAndMinsIcons> createState() => _PlusAndMinsIconsState();
}

class _PlusAndMinsIconsState extends State<PlusAndMinsIcons> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomIconContainer(
          onTap: () {
            setState(() {
              if (count > 1) {
                count--;
              }
            });
          },
          color: Colors.white,
          icon: Icons.remove,
          iconColor: Colors.black,
        ),
        const SizedBox(width: 8),
        Text(count.toString(), style: Styles.textSemiBold22),
        const SizedBox(width: 8),
        CustomIconContainer(
          onTap: () {
            setState(() {
              count++;
            });
          },
          color: const Color(0xff5E5A5A),
          icon: Icons.add,
          iconColor: Colors.white,
        ),
      ],
    );
  }
}
