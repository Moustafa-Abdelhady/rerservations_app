import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:reservations_app/core/networking/api_error_model.dart';
import 'package:reservations_app/features/search_screen/data/repos/search_repo.dart';
import 'package:reservations_app/features/search_screen/logic/search_cubit/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepo _searchRepo;
  Timer? debounce;
  SearchCubit(this._searchRepo) : super(const SearchState.initial());

  //  Debouncing search requests to avoid excessive API calls

  void doctorsSearch(String doctorName) {
    if (debounce?.isActive ?? false) debounce!.cancel();
    debounce = Timer(const Duration(milliseconds: 300), () {
      searchDoctor(doctorName);
    });
  }

  Future<void> searchDoctor(String doctorName) async {
    try {
      emit(const SearchState.searchLoading());
      final response = await _searchRepo.searchDoctor(doctorName);
      response.when(success: (doctors) {
        if (doctors.isNotEmpty && doctors != null) {
          emit(SearchState.searchSuccess(doctors));
        } else {
          emit(const SearchState.noResult());
          clearSearchResult();
        }
      }, failure: (apiErrorModel) {
        emit(SearchState.searchFailure(apiErrorModel));
      });
    } on Exception catch (e) {
      print(e.toString());
      emit(SearchState.searchFailure(ApiErrorModel(message: e.toString())));
    }
  }

  @override
  Future<void> clearSearchResult() {
    debounce?.cancel(); // Cancel debounce when cubit is disposed
    emit(const SearchState.searchSuccess([]));
    return super.close();
  }
}
