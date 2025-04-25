import 'package:dio/dio.dart';
import 'package:furniture_app/core/utils/api_server.dart';
import 'package:furniture_app/feature/home/data/repo/home_impl_repo.dart';
import 'package:furniture_app/feature/search/data/repo/search_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(dio: Dio()));
  getIt.registerSingleton<RepoHomeImpl>(
    RepoHomeImpl(apiService: getIt.get<ApiService>()),
  );
  getIt.registerSingleton<SearchRepoImpl>(
    SearchRepoImpl(apiService: getIt.get<ApiService>()),
  );
}
