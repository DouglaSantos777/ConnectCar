import 'package:connectcar/riverpod/providers.dart';
import 'package:connectcar/screens/detalhes_carro_screen.dart';
import 'package:connectcar/theme/botao_carros_theme.dart';
import 'package:connectcar/theme/cores_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BotaoCarros extends ConsumerWidget {
  final String filtro;
  const BotaoCarros({super.key, required this.filtro});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final carList = ref.watch(carProvider.select((carProvider) =>
        carProvider.cars.where((car) => car.status == filtro).toList()));

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 12.0,
        children: carList.map((car) {
          String corCategoria = _obterCorCategoria(car.category);

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
                      color: Color(int.parse(corCategoria)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
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

  String _obterCorCategoria(String categoria) {
    switch (categoria) {
      case 'GNV':
        return '0xff1E88E5';
      case 'Flex':
        return '0xffE53935';
      case 'Diesel':
        return '0xff8E24AA';
      case 'Híbrido':
        return '0xff43A047';
      case 'Elétrico':
        return '0xffC1C1C1';
      case 'Gasolina':
        return '0xffF9A825';
      default:
        return '0xff1E88E5'; 
    }
  }
}
