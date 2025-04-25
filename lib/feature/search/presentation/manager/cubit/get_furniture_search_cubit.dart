import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:furniture_app/core/model/furniture_model/furniture_model.dart';
import 'package:furniture_app/feature/search/data/repo/search_repo.dart';

part 'get_furniture_search_state.dart';

class GetFurnitureSearchCubit extends Cubit<GetFurnitureSearchState> {
  GetFurnitureSearchCubit(this.searchRepo) : super(GetFurnitureSearchInitial());
  final SearchRepo searchRepo;
  Future<void> getFurnitureSearch({required String category}) async {
    emit(GetFurnitureSearchLoading());
    var result = await searchRepo.fetchParameterFurniture(category: category);
    result.fold(
      (failure) => emit(GetFurnitureSearchFailure(error: failure.errorMessage)),
      (furniture) => emit(GetFurnitureSearchSuccess(furniture: furniture)),
    );
  }

  void emptyRes() {
    emit(GetFurnitureSearchInitial());
  }
}
