import 'package:flutter/material.dart';

import '../../constants/theme.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.label,
    required this.icon,
    this.isRequired = false,
  });

  final String hint;
  final String label;
  final IconData icon;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        decoration: InputDecoration(
            prefixIcon: Icon(icon),
            prefixIconColor: AppColors.primaryDark,
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.blueBorder)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primary)),
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
      ),
    );
  }
}