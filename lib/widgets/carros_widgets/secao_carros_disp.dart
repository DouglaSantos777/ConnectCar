import 'package:connectcar/screens/lista_carros_screen.dart';
import 'package:connectcar/theme/cores_theme.dart';
import 'package:connectcar/widgets/carros_widgets/botao_carros.dart';
import 'package:flutter/material.dart';

class SecaoCarrosDisponiveis extends StatefulWidget {
  const SecaoCarrosDisponiveis({super.key});

  @override
  _SecaoCarrosDisponiveisState createState() => _SecaoCarrosDisponiveisState();
}

class _SecaoCarrosDisponiveisState extends State<SecaoCarrosDisponiveis> {
  final TextEditingController _controller = TextEditingController();
  String _searchQuery = '';

  // Função de filtragem
  void _filterCars(String query) {
    setState(() {
      _searchQuery = query.toLowerCase(); 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Carros Disponíveis',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ListaCarrosScreen(status: 'Disponível'),
                  ),
                );
              },
              icon: const Icon(Icons.directions_car),
              label: const Text('Ver todos'),
              style: ElevatedButton.styleFrom(
                backgroundColor: CoresTheme.azulPrimarioClaro,
                foregroundColor: CoresTheme.textoTemaEscuro,
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
        
        // Barra de pesquisa
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: TextField(
            controller: _controller,
            onChanged: _filterCars, 
            decoration: const InputDecoration(
              hintText: 'Pesquise por modelo...',
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),

        const SizedBox(height: 12),

        BotaoCarros(filtro: 'Disponível', searchQuery: _searchQuery),

        const SizedBox(height: 30),
      ],
    );
  }
}
