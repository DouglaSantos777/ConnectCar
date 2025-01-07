import 'package:connectcar/riverpod/cars_notifier.dart';
import 'package:connectcar/riverpod/payment_notifier.dart';
import 'package:connectcar/riverpod/rents_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectcar/widgets/botao_cadastro.dart';
import 'package:connectcar/theme/cores_theme.dart';

class CardInformacoesAluguel extends ConsumerWidget {
  final int aluguelId;
  const CardInformacoesAluguel({super.key, required this.aluguelId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    final rent = ref.watch(rentsProvider);
    final aluguel = rent.firstWhere((rent) => rent.id == aluguelId);

    // Use "when" para acessar os valores de AsyncValue
    final clienteNome = ref.watch(clienteNomeProvider(aluguel.clienteId));
    final carroCategoria = ref.watch(carroCategoriaProvider(aluguel.carId));
    final carroModelo = ref.watch(carroModeloProvider(aluguel.carId));
    final carroPlaca = ref.watch(carroPlacaProvider(aluguel.carId));

    final pagamentos = ref.watch(paymentNotifierProvider);

    void registrarPagamento() async {
      try {
        final value = aluguel.totalValue;
        final paymentDate = DateTime.now();

        // Registra o pagamento
        await ref.read(paymentNotifierProvider.notifier).registerPayment(
              rentId: aluguel.id,
              value: value,
              paymentDate: paymentDate,
              status: 'Pago',
            );

          ref.read(carrosProvider.notifier).atualizarStatusCarro(
          aluguel.carId,
          'Disponível',
        );

        // Exibe a confirmação de sucesso
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Pagamento registrado com sucesso!')),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erro ao registrar pagamento: $e')),
        );
      }
    }

    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: isDarkMode ? Colors.grey[850] : Colors.white70,
        boxShadow: [
          BoxShadow(
            color: isDarkMode
                ? Colors.black.withOpacity(0.4)
                : Colors.black.withOpacity(0.15),
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Informações do Aluguel:',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: isDarkMode
                  ? CoresTheme.textoTemaEscuro
                  : CoresTheme.textoPrimarioClaro,
            ),
          ),
          const SizedBox(height: 12),
          clienteNome.when(
            data: (nome) =>
                Text('Cliente: $nome', style: const TextStyle(fontSize: 18)),
            loading: () => const CircularProgressIndicator(),
            error: (e, stack) => Text('Erro ao carregar nome: $e',
                style: const TextStyle(fontSize: 18)),
          ),
          carroModelo.when(
            data: (modelo) =>
                Text('Carro: $modelo', style: const TextStyle(fontSize: 18)),
            loading: () => const CircularProgressIndicator(),
            error: (e, stack) => Text('Erro ao carregar modelo: $e',
                style: const TextStyle(fontSize: 18)),
          ),
          carroCategoria.when(
            data: (categoria) => Text('Categoria: $categoria',
                style: const TextStyle(fontSize: 18)),
            loading: () => const CircularProgressIndicator(),
            error: (e, stack) => Text('Erro ao carregar categoria: $e',
                style: const TextStyle(fontSize: 18)),
          ),
          carroPlaca.when(
            data: (placa) =>
                Text('Placa: $placa', style: const TextStyle(fontSize: 18)),
            loading: () => const CircularProgressIndicator(),
            error: (e, stack) => Text('Erro ao carregar placa: $e',
                style: const TextStyle(fontSize: 18)),
          ),
          Text('Data de Retirada: ${aluguel.rentDate.toLocal()}',
              style: const TextStyle(fontSize: 18)),
          Text('Data de Devolução: ${aluguel.returnDate.toLocal()}',
              style: const TextStyle(fontSize: 18)),
          Text('Valor Total: R\$ ${aluguel.totalValue}',
              style: const TextStyle(fontSize: 18)),
          const SizedBox(height: 16),
          BotaoCadastro(
            label: 'Registrar Devolução',
            onPressed: registrarPagamento,
          ),
          const SizedBox(height: 16),                                                                                                                           
          // Exibir a lista de pagamentos diretamente
          Text(
            'Pagamentos Registrados:',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: isDarkMode
                  ? CoresTheme.textoTemaEscuro
                  : CoresTheme.textoPrimarioClaro,
            ),
          ),
          pagamentos.isEmpty
              ? const Center(child: Text('Nenhum pagamento registrado.'))
              : SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: pagamentos.length,
                    itemBuilder: (context, index) {
                      final pagamento = pagamentos[index];

                      // Buscando o aluguel correspondente ao pagamento
                      final aluguel = rent
                          .firstWhere((rent) => rent.id == pagamento.rentId);

                      // Buscando o nome do cliente e a categoria do carro relacionados ao aluguel
                      final clienteNome =
                          ref.watch(clienteNomeProvider(aluguel.clienteId));
                      final carroModelo =
                          ref.watch(carroModeloProvider(aluguel.carId));

                      return clienteNome.when(
                        data: (nome) {
                          return carroModelo.when(
                            data: (modelo) {
                              return ListTile(
                                title:
                                    Text('Pagamento de R\$ ${pagamento.value}'),
                                subtitle: Text(
                                  'Cliente: $nome\nCarro: $modelo\nData: ${pagamento.paymentDate.toLocal()} | Status: ${pagamento.status}',
                                ),
                              );
                            },
                            loading: () => const CircularProgressIndicator(),
                            error: (e, stack) =>
                                Text('Erro ao carregar categoria: $e'),
                          );
                        },
                        loading: () => const CircularProgressIndicator(),
                        error: (e, stack) => Text('Erro ao carregar nome: $e'),
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
