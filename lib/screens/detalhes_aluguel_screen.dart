import 'package:connectcar/widgets/alugueis/card_informacoes_aluguel.dart';
import 'package:connectcar/widgets/carros_widgets/card_carro.dart';
import 'package:connectcar/widgets/clientes/card_cliente.dart';
import 'package:flutter/material.dart';

class DetalhesAluguelScreen extends StatelessWidget {
  const DetalhesAluguelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do Aluguel'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardCarro(),
              CardCliente(),
              CardInformacoesAluguel(),
            ],
          ),
        ),
      ),
    );
  }
}
