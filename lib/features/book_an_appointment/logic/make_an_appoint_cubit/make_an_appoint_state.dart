import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reservations_app/core/networking/api_error_model.dart';

part 'make_an_appoint_state.freezed.dart';

@freezed
class MakeAnAppointState with _$MakeAnAppointState {
  const factory MakeAnAppointState.initial() = _Initial;

  const factory MakeAnAppointState.makeAppointLoading() = MakeAppointLoading;

  const factory MakeAnAppointState.makeAppointSuccess() = MakeAppointSuccess;

  const factory MakeAnAppointState.makeAppointFailure(
      ApiErrorModel apiErrorModel) = MakeAppointFailure;
}
