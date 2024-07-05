import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  // private constructor as i don't want to allow creating an instance of this class
  // دي انا بعملها علشان اعمل الكلاس بتاعي برايفت ومحدش يقدر يعمل انستانس منه
  DioFactory._();
  // ديالطريقة اللي بقدر اعمل منه انستانس برايفت تقريبا اكتشفتها ولم تجرب
  //  DioFactory _instance = DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioIntereceptor();

      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioIntereceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        responseBody: true,
        requestHeader: true,
        responseHeader: false,
        error: true,
        compact: true,
      ),
    );
  }

  static void addDioHeaders() async {
    dio?.options.headers = {
      'Accept': 'application/json',
    };
  }
}
