import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/feature/search/presentation/manager/cubit/get_furniture_search_cubit.dart';
import 'package:go_router/go_router.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onSubmitted: (query) {
        if (query.trim().isNotEmpty) {
          context.read<GetFurnitureSearchCubit>().getFurnitureSearch(
            category: query.trim(),
          );
        }
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 24),
        prefixIcon: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        suffixIcon:
            controller.text.isNotEmpty
                ? IconButton(
                  onPressed: () {
                    setState(() {
                      controller.clear();
                    });
                    context.read<GetFurnitureSearchCubit>().emptyRes();
                  },
                  icon: const Icon(Icons.clear, color: Colors.black),
                )
                : IconButton(
                  onPressed: () {
                    if (controller.text.trim().isNotEmpty) {
                      setState(() {});
                      context
                          .read<GetFurnitureSearchCubit>()
                          .getFurnitureSearch(category: controller.text.trim());
                    }
                  },
                  icon: const Icon(Icons.search, color: Colors.black),
                ),
        hintText: 'Search',
        hintStyle: const TextStyle(color: Colors.black),
        border: customOutlineInputBorder(color: Colors.black),
        focusedBorder: customOutlineInputBorder(color: const Color(0xff004466)),
        enabledBorder: customOutlineInputBorder(color: const Color(0xff004466)),
      ),
    );
  }

  OutlineInputBorder customOutlineInputBorder({required Color color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color, width: 2),
    );
  }
}
