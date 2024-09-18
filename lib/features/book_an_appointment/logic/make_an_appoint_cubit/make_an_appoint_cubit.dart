import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reservations_app/features/book_an_appointment/logic/make_an_appoint_cubit/make_an_appoint_state.dart';

class MakeAnAppointCubit extends Cubit<MakeAnAppointState> {
  MakeAnAppointCubit() : super(const MakeAnAppointState.initial());
}
