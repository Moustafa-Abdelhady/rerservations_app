import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservations_app/features/book_an_appointment/data/models/make_appoint_request_body.dart';
import 'package:reservations_app/features/book_an_appointment/data/repos/make_appoint_repo.dart';
import 'package:reservations_app/features/book_an_appointment/logic/make_an_appoint_cubit/make_an_appoint_state.dart';

class MakeAnAppointCubit extends Cubit<MakeAnAppointState> {
  final MakeAppointRepo _makeAppointRepo;
  MakeAnAppointCubit(this._makeAppointRepo)
      : super(const MakeAnAppointState.initial());

  String? startTime;
  String? note;

  void bookAppointment({required String doctorId}) async {
    emit(const MakeAnAppointState.makeAppointLoading());

    final response = await _makeAppointRepo.bookAppointment(
      MakeAppointRequestBody(
        doctor_id: doctorId,
        start_time: startTime!,
        notes: note,
      ),
    );

    response.when(success: (response) {
      emit(const MakeAnAppointState.makeAppointSuccess());
    }, failure: (apiErrorModel) {
      emit(MakeAnAppointState.makeAppointFailure(apiErrorModel));
    });
  }
}
