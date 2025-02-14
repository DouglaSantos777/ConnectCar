import 'package:connectcar/riverpod/cars_notifier.dart';
import 'package:connectcar/riverpod/clientes_notifier.dart';
import 'package:connectcar/riverpod/providers.dart';
import 'package:connectcar/riverpod/rents_notifier.dart';
import 'package:connectcar/widgets/alugueis/orcamento.dart';
import 'package:connectcar/widgets/botao_insercao.dart';
import 'package:connectcar/widgets/custom_app_bar.dart';
import 'package:connectcar/widgets/botao_cadastro.dart';
import 'package:connectcar/widgets/formulario/formulario_carros.dart';
import 'package:connectcar/widgets/formulario/formulario_clientes.dart';
import 'package:flutter/material.dart';
import 'package:connectcar/widgets/alugueis/adicionar_cliente.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class RealizarAluguelScreen extends ConsumerStatefulWidget {
  const RealizarAluguelScreen({super.key});

  @override
  RealizarAluguelScreenState createState() => RealizarAluguelScreenState();
}

class RealizarAluguelScreenState extends ConsumerState<RealizarAluguelScreen> {
  String? clienteSelecionado;
  String? carroSelecionado;
  double? precoPorDiaCarroSelecionado;

  final _dataRetiradaController = TextEditingController();
  final _dataDevolucaoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final aluguels = ref.watch(rentsProvider);
    final carrosDisponiveis = ref.watch(carProvider).cars;
    
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
                  BotaoInsercao(
                    label: 'Adicionar Cliente',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AdicionarCliente()),
                      ).then((_) {
                        ref.read(clientesProvider.notifier).carregarClientes();
                      });
                    },
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
                        final carro = carrosDisponiveis.firstWhere(
                          (car) => car.id.toString() == carroSelecionado,
                        );
                        precoPorDiaCarroSelecionado = carro.priceByDay;
                      });
                    },
                  ),
                 Orcamento(
                  dataRetiradaController: _dataRetiradaController, 
                  dataDevolucaoController: _dataDevolucaoController,
                  valueCar: precoPorDiaCarroSelecionado ?? 0.0,
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

                        final carrosNotifier =
                            ref.read(carrosProvider.notifier);
                        carrosNotifier.atualizarStatusCarro(
                            int.parse(carroSelecionado!), 'Alugado');

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Aluguel finalizado com sucesso!')),
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
