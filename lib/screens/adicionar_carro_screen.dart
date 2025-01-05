import 'package:connectcar/data/database/database.dart';
import 'package:connectcar/riverpod/providers.dart';
import 'package:connectcar/widgets/botao_cadastro.dart';
import 'package:connectcar/widgets/carros_widgets/cadastro_carros.dart';
import 'package:connectcar/widgets/custom_app_bar.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdicionarCarroScreen extends ConsumerStatefulWidget {
  const AdicionarCarroScreen({super.key});

  @override
  AdicionarCarroScreenState createState() => AdicionarCarroScreenState();
}

class AdicionarCarroScreenState extends ConsumerState<AdicionarCarroScreen> {
  final _formKey = GlobalKey<FormState>();

  final marcaController = TextEditingController();
  final modeloController = TextEditingController();
  final anoController = TextEditingController();
  final placaController = TextEditingController();
  final renavamController = TextEditingController();
  final categoriaController = TextEditingController();
  final precoController = TextEditingController();
  final descricaoController = TextEditingController();

  bool isDisponivel = true;
  String caminhoImagem = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Adicionar Carro'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CadastroCarros(
                  marcaController: marcaController,
                  modeloController: modeloController,
                  anoController: anoController,
                  placaController: placaController,
                  renavamController: renavamController,
                  categoriaController: categoriaController,
                  precoController: precoController,
                  descricaoController: descricaoController, 
                  onDisponibilidadeChanged: (bool isDisponivel) {
                    setState(() {
                      this.isDisponivel = isDisponivel;
                    });
                  },
                  onImagemSelecionada: (String caminho) {
                    setState(() {
                      caminhoImagem = caminho; 
                    });
                  },
                ),
                BotaoCadastro(
                  label: 'Cadastrar carro',
                  onPressed: () => _salvarCarro(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _salvarCarro() async {
    final marca = marcaController.text;
    final modelo = modeloController.text;
    final ano = int.tryParse(anoController.text) ?? 0;
    final placa = placaController.text;
    final renavam = int.tryParse(renavamController.text) ?? 0;
    final categoria = categoriaController.text;
    final preco = double.tryParse(precoController.text) ?? 0.0;
    final descricao = descricaoController.text;

    if (marca.isEmpty || modelo.isEmpty || placa.isEmpty || renavam == 0 || categoria.isEmpty || preco == 0.0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Por favor, preencha todos os campos obrigatórios.')),
      );
      return;
    }

    final status = isDisponivel ? 'Disponível' : 'Alugado';

    final car = CarsCompanion(
      brand: drift.Value(marca),
      model: drift.Value(modelo),
      year: drift.Value(ano),
      plate: drift.Value(placa),
      renavam: drift.Value(renavam),
      category: drift.Value(categoria),
      priceByDay: drift.Value(preco),
      description: drift.Value(descricao),
      createdAt: drift.Value(DateTime.now()),
      photo: drift.Value(caminhoImagem),
      status: drift.Value(status),
    );

    try {
      final carProviderInstance = ref.read(carProvider);
      await carProviderInstance.addCar(car);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Carro cadastrado com sucesso!')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erro ao cadastrar carro: $e')),
      );
    }
  }
}
