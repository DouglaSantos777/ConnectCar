import 'package:connectcar/screens/detalhes_aluguel_screen.dart';
import 'package:connectcar/widgets/alugueis/card_aluguel.dart';
import 'package:flutter/material.dart';

class AlugueisScreen extends StatelessWidget {
  const AlugueisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aluguéis'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CardAluguel(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>  const DetalhesAluguelScreen()
                  )
                );
              },),
            ],
          ),
        ),
      )
    );
  }
}