import 'package:connectcar/riverpod/rents_notifier.dart';
import 'package:connectcar/widgets/carros_widgets/card_carro.dart';
import 'package:connectcar/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListaCarrosScreen extends ConsumerWidget {
  final String status;

  const ListaCarrosScreen({super.key, required this.status});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final carrosFuture = status == 'Disponível'
        ? ref.watch(carrosDisponiveisProvider)
        : ref.watch(carrosAlugadosProvider);

    return Scaffold(
      appBar: const CustomAppBar(title: 'Seus carros'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: carrosFuture.when(
          data: (carros) {
            if (carros.isEmpty) {
              return const Center(child: Text('Nenhum carro encontrado.'));
            }
            return ListView.builder(
              itemCount: carros.length,
              itemBuilder: (context, index) {
                final carro = carros[index];
                return CardCarro(carId: carro.id,); 
              },
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) => Center(child: Text('Erro: $error')),
        ),
      ),
    );
  }
}
