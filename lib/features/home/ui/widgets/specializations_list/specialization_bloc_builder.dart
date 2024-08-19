import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservations_app/core/helpers/spaces.dart';
import 'package:reservations_app/features/home/logic/home_cubit/home_cubit.dart';
import 'package:reservations_app/features/home/logic/home_cubit/home_state.dart';
import 'package:reservations_app/features/home/ui/widgets/specializations_list/doc_speciality_list_view.dart';
import 'package:reservations_app/features/home/ui/widgets/doctors_list/doctors_shimmer_loading.dart';
import 'package:reservations_app/features/home/ui/widgets/specializations_list/speciality_shimmer_loading.dart';

class SetupSpecializationBlocBuilder extends StatelessWidget {
  const SetupSpecializationBlocBuilder({super.key});

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

  /// shimmer loading for all specialization and doctors
  Widget setupLoading() {
    return Expanded(
        child: Column(
      children: [
        const SpecialityShimmerLoading(),
        verticalSpace(8),
        const DoctorsShimmerLoading()
      ],
    ));
  }

  Widget setupSuccess(specializationList) {
    return DoctorSpecialityListView(
      specializationDataList: specializationList ?? [],
    );
  }

  Widget setupFailure() {
    return const SizedBox.shrink();
  }
}
