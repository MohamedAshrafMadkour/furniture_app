part of 'get_featured_cubit.dart';

sealed class GetFeaturedState extends Equatable {
  const GetFeaturedState();

  @override
  List<Object> get props => [];
}

final class GetFeaturedInitial extends GetFeaturedState {}

final class GetFeaturedLoading extends GetFeaturedState {}

final class GetFeaturedSuccess extends GetFeaturedState {
  final List<FurnitureModel> furniture;

  const GetFeaturedSuccess(this.furniture);
}

final class GetFeaturedFailure extends GetFeaturedState {
  final String error;

  const GetFeaturedFailure(this.error);
}
