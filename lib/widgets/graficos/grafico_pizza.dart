import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


class GraficoPizza extends StatelessWidget {
  const GraficoPizza({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        children: [
          Expanded(
            child: PieChart(
              PieChartData(
                sectionsSpace: 4,
                centerSpaceRadius: 40,
                sections: [
                  PieChartSectionData(
                    value: 10,
                    color: Colors.green,
                    title: '10%',
                    radius: 60,
                  ),
                  PieChartSectionData(
                    value: 40,
                    color: Colors.blue,
                    title: '40%',
                    radius: 70,
                  ),
                  PieChartSectionData(
                    value: 30,
                    color: Colors.red,
                    title: '30%',
                    radius: 65,
                  ),
                ],
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.circle, color: Colors.green, size: 16),
              SizedBox(width: 5),
              Text('Janeiro'),
              SizedBox(width: 16),
              Icon(Icons.circle, color: Colors.blue, size: 16),
              SizedBox(width: 5),
              Text('Fevereiro'),
              SizedBox(width: 16),
              Icon(Icons.circle, color: Colors.red, size: 16),
              SizedBox(width: 5),
              Text('Março'),
            ],
          ),
        ],
      ),
    );
  }
}
