import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservations_app/core/di_dependency/dependency_injection.dart';
import 'package:reservations_app/core/routing/app_router.dart';
import 'package:reservations_app/doc_app.dart';

void main() async {
  setUpGetIt();
  //this line because project text is disappear when using releasemode belongs to scrrenUtil package
  // to fix .sp font being hiddin  in screen_util in release mode
  await ScreenUtil.ensureScreenSize();
  // this widget is makes the top of mobile  color is white not grey as default
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ),
  );
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
