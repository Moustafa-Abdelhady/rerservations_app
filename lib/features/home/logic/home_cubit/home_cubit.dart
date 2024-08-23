import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservations_app/core/helpers/extentions.dart';
import 'package:reservations_app/core/networking/api_error_handler.dart';
import 'package:reservations_app/features/home/data/models/spcialization_response.dart';

import 'package:reservations_app/features/home/data/repos/home_repos.dart';
import 'package:reservations_app/features/home/logic/home_cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecializationData?>? specializationsList = [];

  void getSpecializations() async {
    try {
      emit(const HomeState.specializationLoading());

      final response = await _homeRepo.getSpecialization();
      response.when(success: (specializationResponseModel) {
        specializationsList =
            specializationResponseModel.specializationDataList ?? [];
        // get the doctors list for first ele in specialization by default
        getDoctorsList(specializationId: specializationsList?.first?.id);

        emit(HomeState.specializationSuccess(specializationsList));
      }, failure: (errorHandler) {
        emit(HomeState.specializationError(errorHandler));
      });
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  /// returns the list of doctors based on the specilization id without filtering.
  void getDoctorsList({required int? specializationId}) async {
    List<Doctors?>? specializationDoctorsList =
        getDoctorsListByfilterSpecializationById(specializationId);

    if (!specializationDoctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorSuccess(specializationDoctorsList));
    } else {
      emit(HomeState.doctorsError(ErrorHandler.handle('No Doctors Found')));
    }
  }

  /// returns the list of doctors based on the specilization id .
  getDoctorsListByfilterSpecializationById(specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
