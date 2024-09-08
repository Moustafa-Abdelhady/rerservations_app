import 'package:dio/dio.dart';
import 'package:reservations_app/core/networking/api_constans.dart';
import 'package:reservations_app/features/home/data/apis/home_api_constans.dart';
import 'package:reservations_app/features/home/data/models/spcialization_response.dart';
import 'package:retrofit/retrofit.dart';

part 'home_api_services.g.dart';

@RestApi(baseUrl: ApiConstans.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstans.specialization)
  Future<SpecializationResponseModel> getSpecialization();
}
