import 'package:dartz/dartz.dart';
import 'package:furniture_app/core/error/error.dart';
import 'package:furniture_app/core/model/furniture_model/furniture_model.dart';
import 'package:furniture_app/core/utils/api_server.dart';
import 'package:furniture_app/feature/home/data/repo/home_repo.dart';

class RepoHomeImpl extends HomeRepo {
  final ApiService apiService;

  RepoHomeImpl({required this.apiService});

  @override
  Future<Either<Failure, List<FurnitureModel>>> fetchFeaturedFurniture() async {
    try {
      var data = await apiService.getFeaturedApi(
        endPoints: 'products?featured=true',
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

  @override
  Future<Either<Failure, List<FurnitureModel>>> fetchOffersFurniture() async {
    try {
      var data = await apiService.getFeaturedApi(endPoints: 'products?stock');
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
