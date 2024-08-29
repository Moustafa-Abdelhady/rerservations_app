import 'package:reservations_app/core/networking/api_error_handler.dart';
import 'package:reservations_app/core/networking/api_result.dart';
import 'package:reservations_app/features/home/data/apis/home_api_services.dart';
import 'package:reservations_app/features/home/data/models/spcialization_response.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

  Future<ApiResult<SpecializationResponseModel>> getSpecialization() async {
    try {
      final response = await _homeApiService.getSpecialization();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
