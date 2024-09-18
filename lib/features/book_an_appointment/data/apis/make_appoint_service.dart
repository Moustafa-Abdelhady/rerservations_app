import 'package:dio/dio.dart';
import 'package:reservations_app/core/networking/api_constans.dart';
import 'package:reservations_app/features/book_an_appointment/data/apis/make_appoint_apis.dart';
import 'package:reservations_app/features/book_an_appointment/data/models/make_appoint_request_body.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'make_appoint_service.g.dart';

@RestApi(baseUrl: ApiConstans.apiBaseUrl)
abstract class MakeAppointApiService {
  factory MakeAppointApiService(Dio dio) = _MakeAppointApiService;

  @POST(MakeAnAppointmentApiConstans.makeAppointment)
  Future<dynamic> bookAppointment(
    @Body() MakeAppointRequestBody makeAppointRequestBody,
  );
}
