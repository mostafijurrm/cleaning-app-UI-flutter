import 'package:cleaning_app_ui/route/page_route.dart';
import 'package:cleaning_app_ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      initialRoute: MyRoute.SPLASH,
      routes: {
        MyRoute.SPLASH : (_) => SplashScreen(),
        MyRoute.ON_BOARD : (_) => SplashScreen(),
        MyRoute.HOME : (_) => SplashScreen(),
        MyRoute.CLEANER_CALENDER : (_) => SplashScreen(),
        MyRoute.ACCOUNT : (_) => SplashScreen(),
      },
    );
  }
}
