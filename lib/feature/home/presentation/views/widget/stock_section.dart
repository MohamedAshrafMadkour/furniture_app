import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/styles.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/custom_offer_list.dart';

class StockSection extends StatelessWidget {
  const StockSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Offers', style: Styles.textSemiBold20),
          SizedBox(height: 24),
          CustomOfferList(),
        ],
      ),
    );
  }
}
