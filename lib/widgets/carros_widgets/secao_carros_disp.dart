import 'package:connectcar/screens/lista_carros_screen.dart';
import 'package:connectcar/theme/cores_theme.dart';
import 'package:connectcar/widgets/carros_widgets/botao_carros.dart';
import 'package:flutter/material.dart';

class SecaoCarrosDisponiveis extends StatelessWidget {
  const SecaoCarrosDisponiveis({super.key});

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
                    builder: (_) => const ListaCarrosScreen(),
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
        
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Pesquise por marca ou modelo...',
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),

        const SizedBox(height: 12),

        const BotaoCarros(filtro: 'Disponível',),

        const SizedBox(height: 30),
      ],
    );
  }
}
