import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:furniture_app/core/model/furniture_model/furniture_model.dart';
import 'package:furniture_app/feature/home/data/repo/home_repo.dart';

part 'get_featured_state.dart';

class GetFeaturedCubit extends Cubit<GetFeaturedState> {
  GetFeaturedCubit(this.repoHome) : super(GetFeaturedInitial());
  final HomeRepo repoHome;
  Future<void> getFeaturedFurniture() async {
    emit(GetFeaturedLoading());
    var result = await repoHome.fetchFeaturedFurniture();
    log(result.toString());
    result.fold(
      (failure) => emit(GetFeaturedFailure(failure.errorMessage)),
      (furniture) => emit(GetFeaturedSuccess(furniture)),
    );
  }
}
