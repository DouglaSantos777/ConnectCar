import 'package:connectcar/riverpod/rents_notifier.dart';
import 'package:connectcar/theme/cores_theme.dart';
import 'package:connectcar/widgets/alugueis/orcamento.dart';
import 'package:connectcar/widgets/custom_app_bar.dart';
import 'package:connectcar/widgets/formulario/botao_cadastro.dart';
import 'package:connectcar/widgets/formulario/formulario_carros.dart';
import 'package:connectcar/widgets/formulario/formulario_clientes.dart';
import 'package:flutter/material.dart';
import 'package:connectcar/widgets/alugueis/adicionar_cliente.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class RealizarAluguelScreen extends ConsumerStatefulWidget {
  const RealizarAluguelScreen({super.key});

  @override
  _RealizarAluguelScreenState createState() => _RealizarAluguelScreenState();
}

class _RealizarAluguelScreenState extends ConsumerState<RealizarAluguelScreen> {
  String? clienteSelecionado;
  String? carroSelecionado;

  final _dataRetiradaController = TextEditingController();
  final _dataDevolucaoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final aluguels = ref.watch(rentsProvider);
    return Scaffold(
      appBar: const CustomAppBar(title: 'Realizar aluguel'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Selecione ou adicione o cliente:',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 14),
                  FormularioClientes(
                    clienteSelecionado: clienteSelecionado,
                    onChanged: (String? newValue) {
                      setState(() {
                        clienteSelecionado = newValue;
                      });
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AdicionarCliente()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CoresTheme.backgroundBotao,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 5,
                    ),
                    child: const Text(
                      'Adicionar Cliente',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: CoresTheme.textoTemaEscuro),
                    ),
                  ),
                  const SizedBox(height: 14),
                  const Text(
                    'Selecione o carro:',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 14),
                  FormularioCarros(
                    carroSelecionado: carroSelecionado,
                    onChanged: (String? newValue) {
                      setState(() {
                        carroSelecionado = newValue;
                      });
                    },
                  ),
                 Orcamento(
                  dataRetiradaController: _dataRetiradaController, 
                  dataDevolucaoController: _dataDevolucaoController, 
                ),
                  BotaoCadastro(
                      label: 'Finalizar aluguel',
                      onPressed: () {
                        if (clienteSelecionado == null ||
                            carroSelecionado == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text(
                                    'Por favor, selecione cliente e carro!')),
                          );
                        } else {
                    final rentDate = DateFormat('dd/MM/yyyy')
                          .parse(_dataRetiradaController.text);
                      final returnDate = DateFormat('dd/MM/yyyy')
                          .parse(_dataDevolucaoController.text);

                          final rentNotifier = ref.read(rentsProvider.notifier);
                          rentNotifier.adicionarRent(
                            clienteId: int.parse(clienteSelecionado!),
                            carId: int.parse(carroSelecionado!),
                            rentDate: rentDate,
                            returnDate: returnDate,
                          );

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content:
                                    Text('Aluguel finalizado com sucesso!')),
                          );
                        }
                      },
                      ),
                        const SizedBox(height: 20),
                  // Adicionando a ListView para exibir os aluguéis
                  const Text(
                    'Aluguéis realizados:',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10),
                  aluguels.isEmpty
                      ? const Text("Nenhum aluguel realizado ainda.")
                      : ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: aluguels.length,
                          itemBuilder: (context, index) {
                            final aluguel = aluguels[index];
                            return ListTile(
                              title: Text(
                                  "Cliente: ${aluguel.clienteId}, Carro: ${aluguel.carId}"),
                              subtitle: Text(
                                  "Data Retirada: ${DateFormat('dd/MM/yyyy').format(aluguel.rentDate)} - Data Devolução: ${DateFormat('dd/MM/yyyy').format(aluguel.returnDate)}"),
                            );
                          },
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}