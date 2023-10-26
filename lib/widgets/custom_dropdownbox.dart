import 'package:flutter/material.dart';

class CustomDropdownBox<T> extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final IconData? suffixIcon;
  final IconData? icon;
  final String propertyName;
  final Map<String, dynamic> propertyValues;
  final List<DropdownMenuItem<T>> items;
  final T? value;

  const CustomDropdownBox({
    super.key,
    this.hintText,
    this.labelText,
    this.suffixIcon,
    this.icon,
    required this.propertyName,
    required this.propertyValues,
    required this.items,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      value: value,
      onChanged: (selectedValue) {
        propertyValues[propertyName] = selectedValue;
      },
      items: items,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
