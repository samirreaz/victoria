import 'package:flutter/material.dart';
import 'package:victoria/constants.dart';
import 'package:victoria/routes.dart';
import 'package:victoria/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Muli',
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        ),
      ),
      //home: const SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
