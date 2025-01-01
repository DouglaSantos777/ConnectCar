import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class GraficoLinhas extends StatelessWidget {
  const GraficoLinhas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: LineChart(
        LineChartData(
          gridData: const FlGridData(show: true),
          titlesData: FlTitlesData(
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 20,
                getTitlesWidget: (value, meta) {
                  switch (value.toInt()) {
                    case 0:
                      return const Text('Jan');
                    case 1:
                      return const Text('Fev');
                    case 2:
                      return const Text('Mar');
                    case 3:
                      return const Text('Abr');
                    default:
                      return Container();
                  }
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 24, 
              ),
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              isCurved: true,
              spots: const [
                FlSpot(0, 10),
                FlSpot(1, 30),
                FlSpot(2, 20),
                FlSpot(3, 50),
              ],
              barWidth: 4,
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  colors: [Colors.orange.withOpacity(0.3), Colors.orange.withOpacity(0)],
                ),
              ),
              dotData: const FlDotData(show: true),
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
