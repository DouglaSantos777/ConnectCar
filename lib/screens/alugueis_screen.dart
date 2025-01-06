import 'package:connectcar/screens/detalhes_aluguel_screen.dart';
import 'package:connectcar/widgets/alugueis/card_aluguel.dart';
import 'package:connectcar/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectcar/riverpod/rents_notifier.dart';

class AlugueisScreen extends ConsumerWidget {
  const AlugueisScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rents = ref.watch(rentsProvider);

    return Scaffold(
      appBar: const CustomAppBar(title: 'Aluguéis'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: rents.map((rent) {
              final clienteNome =
                  ref.watch(clienteNomeProvider(rent.clienteId));
              final categoriaCarro =
                  ref.watch(carroCategoriaProvider(rent.carId));

              return clienteNome.when(
                data: (nome) {
                  return categoriaCarro.when(
                    data: (categoria) {
                      return CardAluguel(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => DetalhesAluguelScreen(),
                            ),
                          );
                        },
                        clienteNome: nome ?? 'Cliente não encontrado',
                        categoriaCarro: categoria ?? 'Categoria não encontrada',
                        dataRetirada:
                            rent.rentDate.toLocal().toString().split(' ')[0],
                        dataDevolucao:
                            rent.returnDate.toLocal().toString().split(' ')[0],
                      );
                    },
                    loading: () => const CircularProgressIndicator(),
                    error: (error, stackTrace) =>
                        Text('Erro ao carregar categoria: $error'),
                  );
                },
                loading: () => const CircularProgressIndicator(),
                error: (error, stackTrace) =>
                    Text('Erro ao carregar nome: $error'),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
