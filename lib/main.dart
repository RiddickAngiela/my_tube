import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/auth_provider.dart';
import 'screens/home_screen.dart';
import 'screens/signup_screen.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video App',
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Colors.blue,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontFamily: 'Lato',
            letterSpacing: 1.0,
          ),
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.blue,
          textTheme: ButtonTextTheme.primary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.blue,
        ),
        cardColor: Colors.white,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Colors.black,
            fontFamily: 'Lato',
            letterSpacing: 1.0,
          ),
          bodyMedium: TextStyle(
            color: Colors.black,
            fontFamily: 'Lato',
            letterSpacing: 1.0,
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          labelStyle: TextStyle(
            color: Colors.black,
            fontFamily: 'Lato',
            letterSpacing: 1.0,
          ),
        ),
      ),
      home: SignupScreen(), // Start with the SignupScreen
    );
  }
}
