import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/core/utils/styles.dart';
import 'package:furniture_app/core/widget/custom_indactor.dart';
import 'package:furniture_app/core/widget/error_message.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/custom_offer_body.dart';
import 'package:furniture_app/feature/search/presentation/manager/cubit/get_furniture_search_cubit.dart';

class GetFurnitureSearchList extends StatelessWidget {
  const GetFurnitureSearchList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetFurnitureSearchCubit, GetFurnitureSearchState>(
      builder: (context, state) {
        if (state is GetFurnitureSearchSuccess) {
          return IntrinsicHeight(
            child: Column(
              children: List.generate(
                state.furniture.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: CustomOfferBody(item: state.furniture[index]),
                ),
              ),
            ),
          );
        } else if (state is GetFurnitureSearchFailure) {
          return ErrorMessage(errorMessage: state.error);
        } else if (state is GetFurnitureSearchLoading) {
          return const IndicatorLoading();
        } else {
          return const Center(
            child: Text('Search Now!', style: Styles.textExtraLight24),
          );
        }
      },
    );
  }
}
