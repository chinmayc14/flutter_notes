import 'package:flutter/material.dart';
import 'package:flutter_keep/blocs/theme.dart';
import 'package:provider/provider.dart';
import 'Screens/HomePage.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<themeChanger>(
      create: (_) => themeChanger(ThemeData.dark()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Notes',
        theme: ThemeData(
          fontFamily: "Roboto",
          iconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.black),
          ),
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen(
          'assets/keep.flr',
          HomePage(),
          startAnimation: 'Untitled',
        ),
      ),
    );
  }
}
