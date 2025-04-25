import 'package:flutter/material.dart';
import 'package:furniture_app/core/utils/styles.dart';
import 'package:furniture_app/feature/search/presentation/views/widget/custom_text_field.dart';
import 'package:furniture_app/feature/search/presentation/views/widget/get_search_furniture_list.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: CustomTextField()),
          const SliverToBoxAdapter(child: SizedBox(height: 30)),
          SliverToBoxAdapter(
            child: Text(
              'Your Results',
              style: Styles.textSemiBold20.copyWith(
                decoration: TextDecoration.underline,
                decorationColor: const Color(0xff004466),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 30)),
          const SliverToBoxAdapter(child: GetFurnitureSearchList()),
        ],
      ),
    );
  }
}
