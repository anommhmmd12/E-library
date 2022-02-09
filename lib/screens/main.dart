import 'package:dokter_ku/screens/constants.dart';
import 'package:dokter_ku/screens/welcome/first_screen.dart';
import 'package:dokter_ku/screens/welcome/mainPage.dart';
import 'package:dokter_ku/screens/welcome/setting_acc.dart';
import 'package:flutter/material.dart';
import 'welcome/welcome_screen.dart';
import 'welcome/sign_in.dart';


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
     title: 'Dokter KU',
     theme: ThemeData(
       primaryColor: primaryColor,
       textTheme: Theme.of(context).textTheme.apply(displayColor: textColor),
        primarySwatch: Colors.blue,
     ),
     home:mainPage()
    );
  }
}

