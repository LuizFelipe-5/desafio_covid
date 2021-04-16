import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'pages/country_details_page.dart';
import 'pages/tab_details_page.dart';
import 'pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline6: TextStyle(color: Colors.pink, fontSize: 16),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/tabContinents': (context) => TabContinents(),
        '/countryDetails': (context) => CountryDetails(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return _splashScreen();
  }
}

Widget _splashScreen() {
  return Stack(
    children: [
      SplashScreen(
        seconds: 3,
        backgroundColor: Colors.white,
        navigateAfterSeconds: HomeScreen(),
        loaderColor: Colors.transparent,
      ),
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/logo.png"),
            fit: BoxFit.none,
          ),
        ),
      )
    ],
  );
}
