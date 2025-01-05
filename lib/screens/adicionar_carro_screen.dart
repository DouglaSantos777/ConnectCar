import 'package:connectcar/riverpod/providers.dart';
import 'package:connectcar/widgets/custom_app_bar.dart';
import 'package:connectcar/widgets/formulario/botao_cadastro.dart';
import 'package:connectcar/widgets/formulario/formulario_descricao.dart';
import 'package:connectcar/widgets/formulario/formulario_numerico.dart';
import 'package:connectcar/widgets/formulario/formulario_preco.dart';
import 'package:connectcar/widgets/formulario/formulario_texto.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:connectcar/data/database/database.dart';

class AdicionarCarroScreen extends ConsumerStatefulWidget {
  const AdicionarCarroScreen({super.key});

  @override
  AdicionarCarroScreenState createState() => AdicionarCarroScreenState();
}

class AdicionarCarroScreenState extends ConsumerState<AdicionarCarroScreen> {
  final marcaController = TextEditingController();
  final modeloController = TextEditingController();
  final anoController = TextEditingController();
  final placaController = TextEditingController();
  final renavamController = TextEditingController();
  final categoriaController = TextEditingController();
  final precoController = TextEditingController();
  final descricaoController = TextEditingController();

  bool isDisponivel = true; 

  final List<String> categorias = [
    'GNV',
    'Flex',
    'Diesel',
    'Híbrido',
    'Elétrico',
    'Gasolina',
  ];

  String? categoriaSelecionada = 'GNV';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Adicionar Carro'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Disponível para aluguel:', style: TextStyle(fontSize: 20),),
                  Checkbox(
                    value: isDisponivel,
                    onChanged: (bool? newValue) {
                      setState(() {
                        isDisponivel = newValue ?? true;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              FormularioTexto(controller: marcaController, label: 'Marca'),
              FormularioTexto(controller: modeloController, label: 'Modelo'),
              FormularioNumerico(controller: anoController, label: 'Ano'),
              FormularioTexto(controller: placaController, label: 'Placa'),
              FormularioNumerico(controller: renavamController, label: 'Renavam'),
              
              DropdownButtonFormField<String>(
                value: categoriaSelecionada,
                decoration: const InputDecoration(
                  labelText: 'Categoria',
                  border: OutlineInputBorder(),
                ),
                items: categorias.map((String categoria) {
                  return DropdownMenuItem<String>(
                    value: categoria,
                    child: Text(categoria),
                  );
                }).toList(),
                onChanged: (String? newCategoria) {
                  setState(() {
                    categoriaSelecionada = newCategoria;
                    categoriaController.text = categoriaSelecionada!; 
                  });
                },
              ),
              const SizedBox(height: 20),
              FormularioPreco(controller: precoController, label: 'Preço por dia'),
              FormularioDescricao(controller: descricaoController, label: 'Descrição'),

              BotaoCadastro(
                label: 'Cadastrar carro',
                onPressed: () => _salvarCarro(),
              ),
              const SizedBox(height: 30),
              /*FutureBuilder<List<Car>>(
                future: Future.value(ref.read(carProvider).cars),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Erro: ${snapshot.error}');
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const Text('Nenhum carro cadastrado.');
                  } else {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        final car = snapshot.data![index];
                        return ListTile(
                          title: Text('${car.brand} - ${car.model}'),
                          subtitle: Text('Status: ${car.status} | Preço: R\$${car.priceByDay} por dia'),
                        );
                      },
                    );
                  }
                },
              ),*/
            ],
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
      photo: const drift.Value('default_photo_url'),
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
