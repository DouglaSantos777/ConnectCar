import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormularioData extends StatefulWidget {
  final String label;
  const FormularioData({super.key, required this.label});

  @override
  FormularioDataState createState() => FormularioDataState();
}

class FormularioDataState extends State<FormularioData> {
  final TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != DateTime.now()) {
      setState(() {
        _dateController.text = DateFormat('dd/MM/yyyy').format(picked);  
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextField(
        controller: _dateController,
        readOnly: true, 
        decoration: InputDecoration(
          labelText: widget.label,
          suffixIcon: const Icon(Icons.calendar_month_outlined, color: Colors.blueAccent, size: 24), 
        ),
        onTap: () {
          _selectDate(context); 
        },
      ),
    );
  }
}
