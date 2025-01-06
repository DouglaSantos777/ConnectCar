import 'package:connectcar/widgets/alugueis/card_informacoes_aluguel.dart';
import 'package:connectcar/widgets/carros_widgets/card_carro.dart';
import 'package:connectcar/widgets/clientes/card_cliente.dart';
import 'package:connectcar/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DetalhesAluguelScreen extends StatelessWidget {
  final int aluguelId;
  final int carId;
  final int clienteId;
  const DetalhesAluguelScreen({super.key, required this.aluguelId, required this.carId, required this.clienteId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Detalhes do aluguel'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardCarro(carId: carId),
              CardCliente(clienteId: clienteId,),
              CardInformacoesAluguel(aluguelId: aluguelId),
            ],
          ),
        ),
      ),
    );
  }
}
