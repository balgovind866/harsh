import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:tembo_hrms_app/view/my_wibsite_page/my_website.dart';
import 'package:tembo_hrms_app/view/splash_screan/splash_provider.dart';
import 'package:tembo_hrms_app/view/splash_screan/splash_screen.dart';

import 'conf/app_color.dart';
import 'conf/size_utils.dart';


void main() async{



  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,


  ]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    return runApp(const MyApp());
  });
}
var height;
var width;
TextTheme? theme;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    theme=Theme.of(context).textTheme;

    return MultiProvider(
        providers: [
          ChangeNotifierProvider<SplashScreenProvider>(
            create: (context) => SplashScreenProvider(),
          ),
        ],
        child: MaterialApp(
          theme: ThemeData(
            backgroundColor: AppColor.gray10001,
            primaryColor: const Color(0XFF225663),
            textTheme: TextTheme(



            ),

          ),
          debugShowCheckedModeBanner: false,
          home: MyWebsitePage(),
        ),

    );
  }
}
class Logger {
  static LogMode _logMode = LogMode.debug;

  static void init(LogMode mode) {
    Logger._logMode = mode;
  }

  static void log(dynamic data, {StackTrace? stackTrace}) {
    if (_logMode == LogMode.debug) {
      print("Error: $data$stackTrace");
    }
  }
}

enum LogMode { debug, live }

