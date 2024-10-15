import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reservations_app/core/networking/api_error_model.dart';
import 'package:reservations_app/features/home/data/models/spcialization_response.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;

  const factory SearchState.searchLoading() = SearchLoading;

  const factory SearchState.searchSuccess(List<Doctors>? doctors) =
      SearchSuccess;

  const factory SearchState.noResult() = NoResult;

  const factory SearchState.searchFailure(ApiErrorModel apiErrorModel) =
      SearchFailure;
}
