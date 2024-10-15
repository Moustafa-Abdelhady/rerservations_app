import 'package:reservations_app/core/networking/api_error_handler.dart';
import 'package:reservations_app/core/networking/api_result.dart';
import 'package:reservations_app/features/search_screen/data/apis/search_api_service.dart';

class SearchRepo {
  final SearchApiService _searchApiService;

  SearchRepo(this._searchApiService);

  Future<ApiResult<dynamic>> searchDoctor(String doctorName) async {
    try {
      final response = await _searchApiService.searchDoctors(doctorName);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error.toString()));
    }
  }
}
