import 'package:connectcar/screens/detalhes_carro_screen.dart';
import 'package:flutter/material.dart';

class BotaoCarros extends StatelessWidget {
  BotaoCarros({super.key});

  final List<Map<String, String>> categorias = [
    {'nome': 'SUV', 'cor': '0xff1E88E5'},      
    {'nome': 'Esportivo', 'cor': '0xffE53935'}, 
    {'nome': 'Sedan', 'cor': '0xff8E24AA'},     
    {'nome': 'Hatch', 'cor': '0xff43A047'},     
    {'nome': 'Caminhonete', 'cor': '0xffF9A825'}, 
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 12.0,
        children: categorias.map((categoria) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const DetalhesCarroScreen(),
                ),
              );
            },
            child: Chip(
              backgroundColor: Colors.blue[50],
              padding: const EdgeInsets.all(8),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.blueAccent,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              label: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(int.parse(categoria['cor']!)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    categoria['nome']!,
                    style: const TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
