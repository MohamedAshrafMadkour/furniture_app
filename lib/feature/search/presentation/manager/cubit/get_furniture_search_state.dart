part of 'get_furniture_search_cubit.dart';

sealed class GetFurnitureSearchState extends Equatable {
  const GetFurnitureSearchState();

  @override
  List<Object> get props => [];
}

final class GetFurnitureSearchInitial extends GetFurnitureSearchState {}

final class GetFurnitureSearchLoading extends GetFurnitureSearchState {}

final class GetFurnitureSearchSuccess extends GetFurnitureSearchState {
  final List<FurnitureModel> furniture;

  const GetFurnitureSearchSuccess({required this.furniture});
}

final class GetFurnitureSearchFailure extends GetFurnitureSearchState {
  final String error;

  const GetFurnitureSearchFailure({required this.error});
}
