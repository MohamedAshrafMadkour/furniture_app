import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:furniture_app/core/model/furniture_model/furniture_model.dart';
import 'package:furniture_app/feature/home/data/repo/home_repo.dart';

part 'get_offers_state.dart';

class GetOffersCubit extends Cubit<GetOffersState> {
  GetOffersCubit(this.repoHome) : super(GetOffersInitial());
  final HomeRepo repoHome;
  Future<void> getOffersFurniture() async {
    emit(GetOffersLoading());
    var result = await repoHome.fetchOffersFurniture();
    result.fold(
      (failure) => emit(GetOffersFailure(error: failure.errorMessage)),
      (offers) => emit(GetOffersSuccess(offers: offers)),
    );
  }
}
