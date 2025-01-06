import 'dart:io';

import 'package:connectcar/data/database/database.dart';
import 'package:connectcar/riverpod/providers.dart';
import 'package:connectcar/screens/detalhes_carro_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectcar/theme/cores_theme.dart';
import 'package:connectcar/theme/botao_carros_theme.dart';

class BotaoCarros extends ConsumerWidget {
  final String filtro;
  final String searchQuery;

  const BotaoCarros({super.key, required this.filtro, required this.searchQuery});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final carDaoAsync = ref.watch(carDaoProvider);

    return carDaoAsync.when(
      data: (carDao) {
        final carList = ref.watch(carProvider.select((carProvider) =>
            carProvider.cars.where((car) =>
                car.status == filtro &&
                car.model.toLowerCase().contains(searchQuery) 
            ).toList()));
        
        return _construirListaCarros(context, carList);
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) => Center(child: Text('Erro: $error')),
    );
  }

  Widget _construirListaCarros(BuildContext context, List<Car> carList) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 12.0,
        children: carList.map((car) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetalhesCarroScreen(carId: car.id),
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
                  _carregarImagem(car.photo),
                  const SizedBox(height: 4),
                  Text(
                    car.model,
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

  Widget _carregarImagem(String url) {
    if (url.startsWith('/data/')) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.file(
          File(url),
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
      );
    } else {
      return Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Icon(
            Icons.directions_car, 
            size: 40,
            color: Colors.white,
          ),
        ),
      );
    }
  }
}
