import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_eccommerce/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Todo: Init Local Storage
  // Todo: Await Native Splash
  // Todo: Initialize firebase
  // Todo: Initialize Autentication
   SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom],
  ).then(
    (_) => runApp(ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) => const MyApp(),
    )),
  );
  
}


