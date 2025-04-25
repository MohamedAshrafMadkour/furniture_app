import 'package:dartz/dartz.dart';
import 'package:furniture_app/core/error/error.dart';
import 'package:furniture_app/core/model/furniture_model/furniture_model.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<FurnitureModel>>> fetchParameterFurniture({
    required String category,
  });
}
