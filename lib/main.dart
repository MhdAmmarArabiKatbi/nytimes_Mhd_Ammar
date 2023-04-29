import '../core/di/injection_container.dart' as di;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'core/utils/constant.dart';
import 'core/utils/routing/router.dart';
import 'core/utils/routing/routes.dart';

Future<void> initialize() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.configure();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

void main() async {
  await initialize();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return const MaterialApp(
        title: Constant.appName,
        debugShowCheckedModeBanner: false,
        locale: Constant.englishLocale,
        supportedLocales: [
          Constant.englishLocale,
        ],
        initialRoute: AppRoutes.homeRoute,
        onGenerateRoute: onGenerateRoute,
      );
    });
  }
}
