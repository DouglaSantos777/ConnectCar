import 'package:connectcar/models/app_database.dart';
import 'package:connectcar/widgets/custom_app_bar.dart';
import 'package:connectcar/widgets/botao_cadastro.dart';
import 'package:connectcar/widgets/formulario/formulario_numerico.dart';
import 'package:connectcar/widgets/formulario/formulario_texto.dart';
import 'package:flutter/material.dart';

class AdicionarCliente extends StatefulWidget {
  const AdicionarCliente({super.key});

  @override
  _AdicionarClienteState createState() => _AdicionarClienteState();
}

class _AdicionarClienteState extends State<AdicionarCliente> {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController cpfController = TextEditingController();
  final TextEditingController cnhController = TextEditingController();
  final TextEditingController enderecoRuaController = TextEditingController();
  final TextEditingController enderecoNumeroController = TextEditingController();
  final TextEditingController enderecoBairroController = TextEditingController();
  final TextEditingController enderecoCidadeController = TextEditingController();
  final TextEditingController enderecoEstadoController = TextEditingController();
  final TextEditingController enderecoCepController = TextEditingController();
  final TextEditingController telefoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  late AppDatabase appDatabase;
  List<ClienteData> clientes = [];

  @override
  void initState() {
    super.initState();
    _initializeDatabase();
  }

  Future<void> _initializeDatabase() async {
    appDatabase = await AppDatabase.open();
    setState(() {}); 
    await _carregarClientes(); 
  }

  Future<void> _carregarClientes() async {
    final allClientes = await appDatabase.getAllClientes();
    setState(() {
      clientes = allClientes;
    });
  }

  bool _validarCampos() {
    return nomeController.text.isNotEmpty &&
        cpfController.text.isNotEmpty &&
        cnhController.text.isNotEmpty &&
        enderecoRuaController.text.isNotEmpty &&
        enderecoNumeroController.text.isNotEmpty &&
        enderecoBairroController.text.isNotEmpty &&
        enderecoCidadeController.text.isNotEmpty &&
        enderecoEstadoController.text.isNotEmpty &&
        enderecoCepController.text.isNotEmpty &&
        telefoneController.text.isNotEmpty;
  }

  void _salvarCliente() async {
    if (!_validarCampos()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Por favor, preencha todos os campos obrigatórios.')),
      );
      return;
    }

    final nome = nomeController.text;
    final cpf = cpfController.text;
    final cnh = cnhController.text;
    final enderecoRua = enderecoRuaController.text;
    final enderecoNumero = enderecoNumeroController.text;
    final enderecoBairro = enderecoBairroController.text;
    final enderecoCidade = enderecoCidadeController.text;
    final enderecoEstado = enderecoEstadoController.text;
    final enderecoCep = enderecoCepController.text;
    final telefone = telefoneController.text;
    final email = emailController.text;

    if (appDatabase != null) {
      await appDatabase.addCliente(
        nome: nome,
        cpf: cpf,
        cnh: cnh,
        enderecoRua: enderecoRua,
        enderecoNumero: enderecoNumero,
        enderecoBairro: enderecoBairro,
        enderecoCidade: enderecoCidade,
        enderecoEstado: enderecoEstado,
        enderecoCep: enderecoCep,
        telefone: telefone,
        email: email,
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Cliente adicionado com sucesso!')),
      );

      nomeController.clear();
      cpfController.clear();
      cnhController.clear();
      enderecoRuaController.clear();
      enderecoNumeroController.clear();
      enderecoBairroController.clear();
      enderecoCidadeController.clear();
      enderecoEstadoController.clear();
      enderecoCepController.clear();
      telefoneController.clear();
      emailController.clear();

      await _carregarClientes();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Adicionar Cliente'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Insira os dados do cliente:',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 14),
              FormularioTexto(label: 'Nome', controller: nomeController),
              FormularioNumerico(label: 'CPF', controller: cpfController, maskType: 'cpf',),
              FormularioTexto(label: 'CNH', controller: cnhController, maskType: 'cnh',),
              FormularioTexto(label: 'Rua', controller: enderecoRuaController),
              FormularioTexto(label: 'Número', controller: enderecoNumeroController),
              FormularioTexto(label: 'Bairro', controller: enderecoBairroController),
              FormularioTexto(label: 'Cidade', controller: enderecoCidadeController),
              FormularioTexto(label: 'UF', controller: enderecoEstadoController, maskType: 'uf',),
              FormularioNumerico(label: 'CEP', controller: enderecoCepController, maskType: 'cep',),
              FormularioNumerico(label: 'Telefone', controller: telefoneController, maskType: 'telefone',),
              FormularioTexto(label: 'Email', controller: emailController),
              const SizedBox(height: 20),
              BotaoCadastro(label: 'Salvar Cliente', onPressed: _salvarCliente),
            ],
          ),
        ),
      ),
    );
  }
}
