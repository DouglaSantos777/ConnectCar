import 'package:connectcar/widgets/carros_widgets/card_carro.dart';
import 'package:flutter/material.dart';

class ListaCarrosScreen extends StatelessWidget {
  const ListaCarrosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seus carros'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              CardCarro(),
              CardCarro(),
              CardCarro(),
              CardCarro(),
              CardCarro(),
              CardCarro(),
              CardCarro(),
              CardCarro(),
              CardCarro(),
              CardCarro(),
            ],
          ),
        ),
      ),
    );
  }
}