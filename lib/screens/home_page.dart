import 'package:connectcar/data/database/database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:connectcar/data/provider/car_provider.dart';
import 'package:connectcar/data/tables/cars.dart';
import 'package:drift/drift.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();

  final _plateController = TextEditingController();
  final _brandController = TextEditingController();
  final _modelController = TextEditingController();
  final _yearController = TextEditingController();
  final _priceByDayController = TextEditingController();
  final _photoController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final carProvider = Provider.of<CarProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar Carro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const Text(
                'Detalhes do Carro',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 16),
              _buildTextField('Placa', _plateController),
              _buildTextField('Marca', _brandController),
              _buildTextField('Modelo', _modelController),
              _buildTextField('Ano', _yearController, isNumber: true),
              _buildTextField('Preço por Dia', _priceByDayController, isNumber: true),
              _buildTextField('Foto URL', _photoController),
              _buildTextField('Descrição', _descriptionController),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Coleta os dados do formulário
                    final car = CarsCompanion(
                      plate: Value(_plateController.text),
                      brand: Value(_brandController.text),
                      model: Value(_modelController.text),
                      year: Value(int.tryParse(_yearController.text) ?? 0),
                      priceByDay: Value(double.tryParse(_priceByDayController.text) ?? 0.0),
                      photo: Value(_photoController.text),
                      description: Value(_descriptionController.text),
                      createdAt: Value(DateTime.now()),
                      category: Value('Categoria Padrão'), // Substitua conforme necessário
                      status: Value('Disponível'), // Substitua conforme necessário
                    );

                    // Chama o método para adicionar o carro
                    await carProvider.addCar(car);

                    // Limpa os campos do formulário
                    _plateController.clear();
                    _brandController.clear();
                    _modelController.clear();
                    _yearController.clear();
                    _priceByDayController.clear();
                    _photoController.clear();
                    _descriptionController.clear();

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Carro cadastrado com sucesso!')),
                    );
                  }
                },
                child: const Text('Cadastrar Carro'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller, {bool isNumber = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Campo obrigatório';
          }
          if (isNumber && double.tryParse(value!) == null) {
            return 'Digite um número válido';
          }
          return null;
        },
      ),
    );
  }
}
