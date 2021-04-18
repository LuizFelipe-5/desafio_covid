import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashscreen/splashscreen.dart';

import 'pages/country_details/country_details_page.dart';
import 'pages/tab_details/tab_details_page.dart';
import 'pages/home/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Ubuntu',
        primaryTextTheme: GoogleFonts.ubuntuTextTheme(
          Theme.of(context).primaryTextTheme,
        ),
        textTheme: GoogleFonts.ubuntuTextTheme(textTheme).copyWith(
          headline6: GoogleFonts.ubuntu(
            textStyle: textTheme.headline6,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: GoogleFonts.ubuntu(
            textStyle: textTheme.bodyText2,
          ),
          caption: GoogleFonts.ubuntu(
            textStyle: textTheme.caption,
            color: Color(0xFF969AA8),
          ),
          subtitle1: GoogleFonts.ubuntu(
            textStyle: textTheme.subtitle1,
            fontWeight: FontWeight.bold,
          ),
          bodyText1: GoogleFonts.ubuntu(
            textStyle: textTheme.bodyText1,
            color: Color(0xFF969AA8),
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/homePage': (context) => HomeScreen(),
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
