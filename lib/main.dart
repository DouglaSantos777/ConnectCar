import 'package:connectcar/screens/principal_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ConnectCar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900),
        useMaterial3: false,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(  
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,     
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,    
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[200],
          centerTitle: true,
          titleTextStyle: const TextStyle(color: Colors.black87, fontSize: 22),
          iconTheme: const IconThemeData(
            color: Colors.black87
          )
        ),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: const TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.w500,
          ),
          prefixIconColor: Colors.blueAccent,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.blueAccent,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.blueAccent,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 18.0,
            horizontal: 16.0,
          ),
          fillColor: Colors.white70,
          filled: true,
        ),
      ),
      home: const PrincipalScreen(),
    );
  }
}
