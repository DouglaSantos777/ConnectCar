import 'package:connectcar/screens/lista_carros_screen.dart';
import 'package:connectcar/theme/cores_theme.dart';
import 'package:connectcar/widgets/carros_widgets/botao_carros.dart';
import 'package:flutter/material.dart';

class SecaoCarrosAlugados extends StatelessWidget {
  const SecaoCarrosAlugados({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: CoresTheme.bordasTemaEscuro,
        border: const Border(
          left: BorderSide(width: 4, color: Color.fromARGB(255, 51, 88, 108)),
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(Icons.directions_car_filled_outlined,size: 26, color: CoresTheme.textoTemaEscuro,),
                  SizedBox(width: 8),
                  Text(
                    'Carros Alugados',
                    style: TextStyle(
                      color: CoresTheme.textoTemaEscuro,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ListaCarrosScreen(status: 'Alugado',),
                    ),
                  );
                },
                icon: const Icon(Icons.visibility),
                label: const Text('Ver todos'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey.shade400,
                  foregroundColor: CoresTheme.textoTemaEscuro,
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),

          const BotaoCarros(filtro: 'Alugado', searchQuery: '',),
        ],
      ),
    );
  }
}
