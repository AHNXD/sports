import 'package:flutter/material.dart';
import 'package:sports/core/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hint;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.primaryColors, width: 2),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            border: InputBorder.none,
            labelText: label,
            hintText: hint,
            labelStyle: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          style: TextStyle(fontSize: 18.0, color: AppColors.textButtonColors),
        ),
      ),
    );
  }
}
