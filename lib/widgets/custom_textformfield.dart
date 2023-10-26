import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? suffixIcon;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String propertyName;
  final Map<String, dynamic> propertyValues;

  const CustomTextFormField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.suffixIcon,
    this.icon,
    this.keyboardType,
    this.obscureText = false,
    required this.propertyName,
    required this.propertyValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: '',
      // onChanged chequea constantemente el valor del campo y sigue
      // actualizando el Map propertyValues para poder validarlo en tiempo real.
      onChanged: (value) => propertyValues[propertyName] = value,
      validator: (value) {
        if (value == null) return 'Campo obligatorio';
        return value.length < 3 ? 'Mínimo 3 caracteres' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
      keyboardType: keyboardType,
      obscureText: obscureText,
    );
  }
}
