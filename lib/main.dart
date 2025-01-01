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
        )
      ),
      home: const PrincipalScreen(),
    );
  }
}
