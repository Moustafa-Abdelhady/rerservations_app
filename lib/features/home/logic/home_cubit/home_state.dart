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
          List<SpecializationData?>? specializationDataList) =
      SpecializationSuccess;

  const factory HomeState.specializationError(ErrorHandler error) =
      SpecializationError;

  // Doctors States
  const factory HomeState.doctorSuccess(List<Doctors?>? doctorsList) =
      DoctorsSuccess;
  const factory HomeState.doctorsError(ErrorHandler errorHandler) =
      DoctorsError;
}
