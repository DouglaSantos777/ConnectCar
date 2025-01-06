import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormularioData extends StatefulWidget {
  final String label;
  final TextEditingController controller; 

  const FormularioData({
    super.key, 
    required this.label,
    required this.controller
    });

  @override
  FormularioDataState createState() => FormularioDataState();
}

class FormularioDataState extends State<FormularioData> {
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != DateTime.now()) {
      setState(() {
        widget.controller.text = DateFormat('dd/MM/yyyy').format(picked);  
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextField(
        controller: widget.controller,
        readOnly: true, 
        decoration: InputDecoration(
          labelText: widget.label,
          suffixIcon: const Icon(Icons.calendar_month_outlined), 
        ),
        onTap: () {
          _selectDate(context); 
        },
      ),
    );
  }
}
