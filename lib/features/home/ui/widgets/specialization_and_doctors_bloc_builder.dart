import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservations_app/core/helpers/spaces.dart';
import 'package:reservations_app/features/home/logic/home_cubit/home_cubit.dart';
import 'package:reservations_app/features/home/logic/home_cubit/home_state.dart';
import 'package:reservations_app/features/home/ui/widgets/doc_speciality_list_view.dart';
import 'package:reservations_app/features/home/ui/widgets/doctors_list_view.dart';

class SetupSpecializationAndDoctorsBlocBuilder extends StatelessWidget {
  const SetupSpecializationAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (prev, current) =>
            current is SpecializationLoading ||
            current is SpecializationSuccess ||
            current is SpecializationError,
        builder: (context, state) {
          return state.maybeWhen(
            specializationLoading: () => setupLoading(),
            specializationSuccess: (specializationDataList) {
              var specializationList = specializationDataList;
              return setupSuccess(specializationList);
            },
            specializationError: (errorHandler) => setupFailure(),
            orElse: () {
              return const SizedBox(
                width: 300,
                height: 300,
                child: Center(
                  child: Text('There\'s an Error'),
                ),
              );
            },
          );
        });
  }

  Widget setupLoading() {
    return const SizedBox(
      height: 100,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget setupSuccess(specializationList) {
    return Expanded(
      child: Column(
        children: [
          DoctorSpecialityListView(
            specializationDataList: specializationList ?? [],
          ),
          verticalSpace(12),
          DoctorsListView(
            doctorsList: specializationList?[0]?.doctorsList,
          ),
        ],
      ),
    );
  }

  Widget setupFailure() {
    return const SizedBox.shrink();
  }
}
