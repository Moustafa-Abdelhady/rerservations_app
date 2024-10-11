import 'package:dio/dio.dart';
import 'package:reservations_app/core/networking/api_constans.dart';
import 'package:reservations_app/features/search_screen/data/apis/search_api_constans.dart';
import 'package:retrofit/retrofit.dart';

part 'search_api_service.g.dart';

@RestApi(baseUrl: ApiConstans.apiBaseUrl)
abstract class SearchApiService {
  factory SearchApiService(Dio dio) = _SearchApiService;

  @GET(SearchApiConstans.searchScreen)
  Future<dynamic> searchDoctors(@Query("name") String doctorName);
}
