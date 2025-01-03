import 'package:connectcar/screens/detalhes_carro_screen.dart';
import 'package:connectcar/theme/botao_carros_theme.dart';
import 'package:connectcar/theme/cores_theme.dart';
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
              backgroundColor: BotaoCarrosTheme.obterCorDeFundo(context),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  width: 1.5,
                  color: CoresTheme.bordasTemaEscuro,
                ),
                borderRadius: BorderRadius.circular(12.0),
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
                  const SizedBox(height: 4,),
                  Text(
                    categoria['nome']!,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: BotaoCarrosTheme.obterCorDoTexto(context),
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
