import 'package:flutter/material.dart';
import 'home_page.dart';

class GitHubClientApp extends StatelessWidget {
  const GitHubClientApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: const ColorScheme.light(),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(primary: Colors.blue)),
        buttonTheme: const ButtonThemeData(
            buttonColor: Colors.blue, textTheme: ButtonTextTheme.primary),
        textTheme: const TextTheme(
          bodyText1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        colorScheme: const ColorScheme.dark(),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey.shade900,
        ),
        buttonTheme: ButtonThemeData(
            buttonColor: Colors.grey.shade900,
            textTheme: ButtonTextTheme.primary),
        textTheme: const TextTheme(
          bodyText1: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
