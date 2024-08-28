import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video App',
      theme: ThemeData(
        primaryColor: Colors.red, // Sets the primary color to red
        scaffoldBackgroundColor:
            Colors.white, // Sets the background color to white
        appBarTheme: const AppBarTheme(
          color: Colors.red, // AppBar color
          titleTextStyle: TextStyle(
            color: Colors.black, // AppBar title text color
            fontFamily: 'Lato', // Use Lato font
            letterSpacing: 1.0, // Letter spacing
          ),
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.red, // Button color
          textTheme: ButtonTextTheme.primary, // Text color for buttons
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.red, // Background color for the button
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.red, // Set the default icon color to red
        ),
        cardColor: Colors.white, // Card color
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Colors.black, // Default text color
            fontFamily: 'Lato', // Use Lato font
            letterSpacing: 1.0, // Letter spacing
          ),
          bodyMedium: TextStyle(
            color: Colors.black, // Secondary text color
            fontFamily: 'Lato', // Use Lato font
            letterSpacing: 1.0, // Letter spacing
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.white, // Background color for text fields
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red), // Border color
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red), // Focused border color
          ),
          labelStyle: TextStyle(
            color: Colors.black, // Label text color
            fontFamily: 'Lato', // Use Lato font
            letterSpacing: 1.0, // Letter spacing
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
