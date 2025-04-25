import 'package:flutter/material.dart';
import 'package:furniture_app/core/assets/app_image.dart';
import 'package:furniture_app/feature/splash/presentation/views/widget/custom_regards_container_body.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(Assets.imagesRegards),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: CustomRegardsContainerBody(),
      ),
    );
  }
}
