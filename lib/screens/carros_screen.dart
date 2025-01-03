import 'package:connectcar/widgets/carros_widgets/secao_carros_alug.dart';
import 'package:connectcar/widgets/carros_widgets/secao_carros_disp.dart';
import 'package:connectcar/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CarrosScreen extends StatelessWidget { 
  const CarrosScreen({super.key});

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: const CustomAppBar(title: 'Carros'),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              SecaoCarrosDisponiveis(),
              SecaoCarrosAlugados(),
            ],
          ),
        ),
      ),
    );
  }
}
