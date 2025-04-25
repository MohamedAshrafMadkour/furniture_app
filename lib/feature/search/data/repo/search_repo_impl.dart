import 'package:dartz/dartz.dart';
import 'package:furniture_app/core/error/error.dart';
import 'package:furniture_app/core/model/furniture_model/furniture_model.dart';
import 'package:furniture_app/core/utils/api_server.dart';
import 'package:furniture_app/feature/search/data/repo/search_repo.dart';

class SearchRepoImpl extends SearchRepo {
  final ApiService apiService;

  SearchRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<FurnitureModel>>> fetchParameterFurniture({
    required String category,
  }) async {
    try {
      var data = await apiService.getFeaturedApi(
        endPoints: 'products?category=$category',
      );
      List<FurnitureModel> items = [];
      for (var item in data['data']) {
        items.add(FurnitureModel.fromJson(item));
      }
      return Right(items);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
