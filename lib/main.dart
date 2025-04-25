import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/core/utils/go_router.dart';
import 'package:furniture_app/core/utils/locator.dart';
import 'package:furniture_app/feature/home/data/repo/home_impl_repo.dart';
import 'package:furniture_app/feature/home/presentation/manager/featured_furniture/get_featured_cubit.dart';
import 'package:furniture_app/feature/home/presentation/manager/offer_furniture/get_offers_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(const FurnitureApp());
}

class FurnitureApp extends StatelessWidget {
  const FurnitureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetFeaturedCubit(getIt.get<RepoHomeImpl>()),
        ),
        BlocProvider(
          create: (context) => GetOffersCubit(getIt.get<RepoHomeImpl>()),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: NavigationRouter.router,
        theme: ThemeData(
          fontFamily: 'Inter',
          scaffoldBackgroundColor: const Color(0xffBCC3C3),
        ),
      ),
    );
  }
}

/*
https://furniture-api.fly.dev/v1/products?category=sofa   category
https://furniture-api.fly.dev/v1/products?stock       stock
https://furniture-api.fly.dev/v1/products?featured=true  featured

*/
