import 'package:flutter/material.dart';

class FormularioRadio<T> extends StatelessWidget {
  final List<T> options; 
  final T? selectedValue; 
  final ValueChanged<T?> onChanged; 
  final String Function(T) labelBuilder; 

  const FormularioRadio({
    super.key,
    required this.options,
    required this.selectedValue,
    required this.onChanged,
    required this.labelBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent, width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(bottom: 20),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Status',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
              )
            ),
            ...options.map((T option) {
              return ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  labelBuilder(option),
                  style: const TextStyle(color: Colors.black54, fontWeight: FontWeight.w500), 
                ),
                leading: Radio<T>(
                  value: option,
                  groupValue: selectedValue,
                  onChanged: onChanged,
                  activeColor: Colors.blue,
                ), 
              );
            }),
          ],
        ),
      ),
    );
  }
}
