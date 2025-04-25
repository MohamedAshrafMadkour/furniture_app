import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/core/widget/custom_indactor.dart';
import 'package:furniture_app/core/widget/error_message.dart';
import 'package:furniture_app/feature/home/presentation/views/widget/custom_filter_and_category_container.dart';
import 'package:furniture_app/feature/home/presentation/manager/featured_furniture/get_featured_cubit.dart';

class CustomFilterAndCategoryContainerList extends StatelessWidget {
  const CustomFilterAndCategoryContainerList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetFeaturedCubit, GetFeaturedState>(
      builder: (context, state) {
        if (state is GetFeaturedSuccess) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * .33,
            child: ListView.builder(
              itemCount: state.furniture.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: CustomFilterAndCategoryContainer(
                    category: state.furniture[index],
                  ),
                );
              },
            ),
          );
        } else if (state is GetFeaturedFailure) {
          return ErrorMessage(errorMessage: state.error);
        } else {
          return const IndicatorLoading();
        }
      },
    );
  }
}
