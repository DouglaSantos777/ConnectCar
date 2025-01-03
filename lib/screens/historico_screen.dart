import 'package:connectcar/widgets/custom_app_bar.dart';
import 'package:connectcar/widgets/graficos/grafico_barras.dart';
import 'package:connectcar/widgets/graficos/grafico_linhas.dart';
import 'package:connectcar/widgets/graficos/grafico_pizza.dart';
import 'package:flutter/material.dart';

class HistoricoScreen extends StatelessWidget {
  const HistoricoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Histórico de aluguéis'),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Carros mais alugados do ano',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            GraficoBarras(),
            SizedBox(height: 32),
            Text(
              'Aluguéis por mês/ano',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            GraficoLinhas(),
            SizedBox(height: 32),
            Text(
              'Receita total do período',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            GraficoPizza(),
          ],
        ),
      ),
    );
  }
}