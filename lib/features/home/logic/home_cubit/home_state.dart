import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reservations_app/core/networking/api_error_handler.dart';
import 'package:reservations_app/features/home/data/models/spcialization_response.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  //Specializations
  const factory HomeState.specializationLoading() = SpecializationLoading;

  const factory HomeState.specializationSuccess(
          SpecializationResponseModel specializationResponseModel) =
      SpecializationSuccess;

  const factory HomeState.specializationError(ErrorHandler error) =
      SpecializationError;
}
