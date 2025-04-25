import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/core/model/furniture_model/furniture_model.dart';
import 'package:furniture_app/core/utils/locator.dart';
import 'package:furniture_app/feature/home/presentation/views/details_view.dart';
import 'package:furniture_app/feature/home/presentation/views/home_view.dart';
import 'package:furniture_app/feature/search/data/repo/search_repo_impl.dart';
import 'package:furniture_app/feature/search/presentation/manager/cubit/get_furniture_search_cubit.dart';
import 'package:furniture_app/feature/search/presentation/views/search_view.dart';
import 'package:furniture_app/feature/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class NavigationRouter {
  static const kHomeView = '/homeView';
  static const kDetailsView = '/detailsView';
  static const kSearchView = '/searchView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create:
                (context) =>
                    GetFurnitureSearchCubit(getIt.get<SearchRepoImpl>()),
            child: const SearchView(),
          );
        },
      ),
      GoRoute(
        path: kDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          return DetailsView(item: state.extra as FurnitureModel);
        },
      ),
    ],
  );
}
