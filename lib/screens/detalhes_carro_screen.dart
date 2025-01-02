import 'package:connectcar/widgets/alugueis/orcamento.dart';
import 'package:connectcar/widgets/carros_widgets/card_informacoes_carro.dart';
import 'package:flutter/material.dart';

class DetalhesCarroScreen extends StatelessWidget {
  const DetalhesCarroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do carro'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: const Column(
          children: [
            CardCarroDetalhes(),
          ],
        ),
      )
    );
  }
}