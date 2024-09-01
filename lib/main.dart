import 'package:book_commerce_app/ui/home.dart';
import 'package:book_commerce_app/ui/login.dart';
import 'package:book_commerce_app/ui/register.dart';
import 'package:flutter/material.dart';

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
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xFFFFC107),
        hintColor: const Color.fromARGB(255, 239, 195, 64),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 239, 195, 64),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 231, 174, 41),
              foregroundColor: Colors.black),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(color: Color.fromARGB(255, 239, 195, 64)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 239, 195, 64),
            ),
          ),
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey,
        hintColor: Colors.blueGrey[200],
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.blueGrey[200],
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey[800],
            foregroundColor: Colors.white,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: const TextStyle(color: Colors.blueGrey),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blueGrey[200]!,
            ),
          ),
        ),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(),
        "/login": (context) => const Login(),
        "/register": (context) => const Register(),
      },
    );
  }
}
