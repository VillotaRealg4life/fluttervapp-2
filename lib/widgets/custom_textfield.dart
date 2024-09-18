import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final TextInputType keyboardType;
  final IconData icon;

  CustomTextField({
    required this.controller,
    required this.label,
    this.keyboardType = TextInputType.text,
    this.icon = Icons.text_fields,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.deepPurpleAccent),
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          filled: true,
          fillColor: Colors.deepPurple[50],
        ),
        keyboardType: keyboardType,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Por favor, ingresa tu $label';
          }
          if (label == 'Peso (kg)' && double.tryParse(value) == null) {
            return 'Por favor, ingresa un peso válido';
          }
          return null;
        },
      ),
    );
  }
}
