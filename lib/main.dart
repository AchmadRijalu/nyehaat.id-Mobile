import 'package:flutter/material.dart';
import 'package:nyehaat_id/View/Edit_Akun_Page.dart';
import 'package:nyehaat_id/View/Home.dart';
import 'package:nyehaat_id/View/Login_Page.dart';
import 'package:nyehaat_id/View/Profil_Penyakit_Page.dart';
import 'package:nyehaat_id/common/styles.dart';
import 'dart:ffi';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

          //Pergantian Warna dan Text pada bar
          colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: primaryColor,
              onPrimary: secondaryColor,
              secondary: secondaryColor),
          appBarTheme: AppBarTheme(elevation: 0),
          textTheme: myTextTheme),
      initialRoute: LoginPage.routeNames,
      routes: {
        LoginPage.routeNames: (context) => LoginPage(),
        HomePage.routeNames: (context) => HomePage(),
        EditAkunPage.routeNames: (context) => EditAkunPage()
      },
    );
  }
}
