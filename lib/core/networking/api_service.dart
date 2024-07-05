import 'package:dio/dio.dart';
import 'package:reservations_app/core/networking/api_constans.dart';
import 'package:reservations_app/features/login/data/models/login_request_body.dart';
import 'package:reservations_app/features/login/data/models/login_response.dart';
import 'package:reservations_app/features/signup/data/models/signup_request_body.dart';
import 'package:reservations_app/features/signup/data/models/signup_response.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
//كل ماكتب فانكشن هنا هتعمل ايررور علشان لازم اعمل الكود بتاع البيلد علشان يسمع

part 'api_service.g.dart';

// must write this line before make generate code in terminal
// (dart run build_runner build --delete-conflicting-outputs) to find file who must generate

@RestApi(
    baseUrl: ApiConstans
        .apiBaseUrl) // it's annotation for retrofit (dio client generator)
abstract class ApiService {
  // start to inject dio in ApiService => make apiservice depends on dio and baseUrl

  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // login function
  @POST(ApiConstans.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  // signup function
  @POST(ApiConstans.signup)
  Future<SignupResponse> signup(
    @Body() SignupRequestBody signupRequestBody,
  );
}
