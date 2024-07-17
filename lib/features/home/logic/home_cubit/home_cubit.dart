import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:reservations_app/features/home/data/repos/home_repos.dart';
import 'package:reservations_app/features/home/logic/home_cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void getSpecializations() async {
    emit(const HomeState.specializationLoading());

    final response = await _homeRepo.getSpecialization();
    response.when(success: (specializationResponseModel) {
      emit(HomeState.specializationSuccess(specializationResponseModel));
    }, failure: (errorHandler) {
      emit(HomeState.specializationError(errorHandler));
    });
  }
}
