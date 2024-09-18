import 'package:reservations_app/core/networking/api_error_handler.dart';
import 'package:reservations_app/core/networking/api_result.dart';
import 'package:reservations_app/features/book_an_appointment/data/apis/make_appoint_service.dart';
import 'package:reservations_app/features/book_an_appointment/data/models/make_appoint_request_body.dart';

class MakeAppointRepo {
  final MakeAppointApiService _makeAppointApiService;

  MakeAppointRepo(this._makeAppointApiService);

  Future<ApiResult<dynamic>> bookAppointment(
      MakeAppointRequestBody makeAppointRequestBody) async {
    try {
      final response =
          await _makeAppointApiService.bookAppointment(makeAppointRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
