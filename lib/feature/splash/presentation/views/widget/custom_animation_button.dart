import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/core/utils/go_router.dart';
import 'package:furniture_app/feature/home/presentation/manager/featured_furniture/get_featured_cubit.dart';
import 'package:furniture_app/feature/home/presentation/manager/offer_furniture/get_offers_cubit.dart';
import 'package:furniture_app/feature/splash/presentation/views/widget/custom_elevated_button.dart';
import 'package:go_router/go_router.dart';

class CustomAnimationButton extends StatefulWidget {
  const CustomAnimationButton({super.key});

  @override
  State<CustomAnimationButton> createState() => _CustomAnimationButton();
}

class _CustomAnimationButton extends State<CustomAnimationButton>
    with SingleTickerProviderStateMixin {
  bool isPressed = false;
  late AnimationController animationController;
  late Animation<double> _scaleAnimation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(microseconds: 100),
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.9).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeOut),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void _onPressed() async {
    setState(() {
      isPressed = true;
    });
    animationController.forward();
    await Future.delayed(const Duration(microseconds: 300));
    animationController.reverse();
    _executeAction();
  }

  void _executeAction() {
    setState(() {
      isPressed = false;
    });
    GoRouter.of(context).push(NavigationRouter.kHomeView);
    BlocProvider.of<GetFeaturedCubit>(context).getFeaturedFurniture();
    BlocProvider.of<GetOffersCubit>(context).getOffersFurniture();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _scaleAnimation,
      child: CustomElevatedButton(isPressed: isPressed, onPressed: _onPressed),
      builder: (context, child) {
        return Transform.scale(scale: _scaleAnimation.value, child: child);
      },
    );
  }
}
