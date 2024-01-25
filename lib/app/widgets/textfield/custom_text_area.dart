import 'package:flutter/material.dart';

import '../../constants/theme.dart';

class CustomTextArea extends StatelessWidget {
  const CustomTextArea({
    super.key,
    required this.hint,
    required this.label,
    this.icon,
    this.maxLines = 5,
    this.isRequired = false,
    this.validator,
    this.controller,
  });
  final String hint;
  final String label;
  final IconData? icon;
  final int maxLines;
  final bool isRequired;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
            prefixIcon: icon == null ? null : Icon(icon),
            prefixIconColor: AppColors.primaryDark,
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.blueBorder)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primary)),
            border: const OutlineInputBorder(),
            hintText: hint,
            label: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(label),
                if (isRequired)
                  const Text(
                    '*',
                    style: TextStyle(color: AppColors.red),
                  )
              ],
            )),
        maxLines: maxLines,
      ),
    );
  }
}
