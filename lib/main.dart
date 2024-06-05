import 'package:auth_dart_app/home.dart';
import 'package:flutter/material.dart';
import 'package:auth_dart_app/login_page.dart';
import 'package:auth_dart_app/registration_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
      ),
      initialRoute: '/signup',
      routes: {
        '/login': (BuildContext context) => LoginPage(),
        '/signup': (BuildContext context) => RegistrationPage(),
        '/home' : (BuildContext context) => HomePage(),
      },
    );
  }
}