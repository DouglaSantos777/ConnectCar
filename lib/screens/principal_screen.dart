/*
import 'package:connectcar/screens/adicionar_carro_screen.dart';
import 'package:connectcar/screens/alugueis_screen.dart';
import 'package:connectcar/screens/carros_screen.dart';
import 'package:connectcar/screens/historico_screen.dart';
import 'package:connectcar/screens/realizar_aluguel_screen.dart';
import 'package:flutter/material.dart';

class PrincipalScreen extends StatefulWidget {
  const PrincipalScreen({super.key});

  @override
  State<PrincipalScreen> createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const CarrosScreen(),
    const AlugueisScreen(),
     const AdicionarCarroScreen(),
    const RealizarAluguelScreen(),
    const HistoricoScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],  
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,  
          onTap: _onItemTapped, 
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.directions_car), label: 'Carros'),
            BottomNavigationBarItem(icon: Icon(Icons.car_rental), label: 'Alugueis'),
            BottomNavigationBarItem(icon: Icon(Icons.app_registration_outlined), label: 'Adicionar carro'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: 'Alugar'),
            BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Histórico'),
          ],
        ),
      ),
    );
  }
}
*/