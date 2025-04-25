import 'package:dartz/dartz.dart';
import 'package:furniture_app/core/error/error.dart';
import 'package:furniture_app/core/model/furniture_model/furniture_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<FurnitureModel>>> fetchFeaturedFurniture();
  Future<Either<Failure, List<FurnitureModel>>> fetchOffersFurniture();
}
