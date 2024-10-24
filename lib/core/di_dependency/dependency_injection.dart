import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:reservations_app/core/networking/api_service.dart';
import 'package:reservations_app/core/networking/dio_factory.dart';
import 'package:reservations_app/features/book_an_appointment/data/apis/make_appoint_service.dart';
import 'package:reservations_app/features/book_an_appointment/data/repos/make_appoint_repo.dart';
import 'package:reservations_app/features/home/data/apis/home_api_services.dart';
import 'package:reservations_app/features/home/data/repos/home_repos.dart';
import 'package:reservations_app/features/login/data/reposatory/login_repo.dart';
import 'package:reservations_app/features/login/logic/login_cubit/login_cubit.dart';
import 'package:reservations_app/features/search_screen/data/apis/search_api_service.dart';
import 'package:reservations_app/features/search_screen/data/repos/search_repo.dart';
import 'package:reservations_app/features/signup/data/reposatory/signup_repo.dart';
import 'package:reservations_app/features/signup/logic/signup_cubit/signup_cubit.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  // Dio & ApiService ;

  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //registerLazySinglton => if i want to create one copy  for one time
  //registerFactory => if i want to create many copies  for every time i want

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  // getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));

  // makeAnAppoint
  getIt.registerLazySingleton<MakeAppointApiService>(
      () => MakeAppointApiService(dio));
  getIt.registerLazySingleton<MakeAppointRepo>(() => MakeAppointRepo(getIt()));

  // searchScreen
  getIt.registerLazySingleton<SearchApiService>(() => SearchApiService(dio));
  getIt.registerLazySingleton<SearchRepo>(() => SearchRepo(getIt()));
}
