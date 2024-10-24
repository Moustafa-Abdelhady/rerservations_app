import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:reservations_app/core/networking/api_error_model.dart';
import 'package:reservations_app/features/home/data/models/spcialization_response.dart';
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
      response.when(success: (data) {
        print(';;;');
        if (data is Map<String, dynamic> || data['data'] != null) {
          print(';;;;;');
          if (data['data'] is List) {
            List<Doctors> doctors = (data['data'] as List)
                .map((doctorJson) => Doctors.fromJson(doctorJson))
                .toList();
            print('....');
            if (doctors.isNotEmpty) {
              emit(SearchState.searchSuccess(doctors));
              print('........');
            } else {
              emit(const SearchState.noResult());
              print('...;;;;');
              // clearSearchResult();
            }
          }
        } else {
          print(';;;;;;;');
          emit(const SearchState.noResult());
          // clearSearchResult();
        }
      }, failure: (apiErrorModel) {
        emit(SearchState.searchFailure(apiErrorModel));
      });
    } on Exception catch (e) {
      print(e.toString());
      emit(SearchState.searchFailure(ApiErrorModel(message: e.toString())));
    }
  }

  Future<void> clearSearchResult() {
    debounce?.cancel(); // Cancel debounce when cubit is disposed
    emit(const SearchState.noResult());
    return super.close();
  }
}
