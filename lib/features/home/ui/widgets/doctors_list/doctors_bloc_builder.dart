import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservations_app/features/home/logic/home_cubit/home_cubit.dart';
import 'package:reservations_app/features/home/logic/home_cubit/home_state.dart';
import 'package:reservations_app/features/home/ui/widgets/doctors_list/doctors_list_view.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (prev, current) =>
          current is DoctorsSuccess || current is DoctorsError,
      builder: (context, state) {
        return state.maybeWhen(
          doctorSuccess: (doctorsList) {
            return setupSuccess(doctorsList);
          },
          doctorsError: (errorHandler) => setupError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupSuccess(doctorsList) {
    return Expanded(child: DoctorsListView(doctorsList: doctorsList));
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
