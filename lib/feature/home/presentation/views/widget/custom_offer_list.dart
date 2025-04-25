import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/core/widget/custom_indactor.dart';
import 'package:furniture_app/core/widget/error_message.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/custom_offer_body.dart';
import 'package:furniture_app/feature/home/presentation/manager/offer_furniture/get_offers_cubit.dart';

class CustomOfferList extends StatelessWidget {
  const CustomOfferList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetOffersCubit, GetOffersState>(
      builder: (context, state) {
        if (state is GetOffersSuccess) {
          return IntrinsicHeight(
            child: Column(
              children: List.generate(
                state.offers.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: CustomOfferBody(item: state.offers[index]),
                ),
              ),
            ),
          );
        } else if (state is GetOffersFailure) {
          return ErrorMessage(errorMessage: state.error);
        } else {
          return const IndicatorLoading();
        }
      },
    );
  }
}
