import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:reservations_app/core/networking/api_service.dart';
import 'package:reservations_app/core/networking/dio_factory.dart';
import 'package:reservations_app/features/login/data/reposatory/login_repo.dart';
import 'package:reservations_app/features/login/logic/login_cubit/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  // Dio & ApiService ;

  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));

  // home
}
