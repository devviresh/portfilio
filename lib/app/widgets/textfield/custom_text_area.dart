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
  });
  final String hint;
  final String label;
  final IconData? icon;
  final int maxLines;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: icon == null ? null : Icon(icon),
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
        maxLines: maxLines,
      ),
    );
  }
}
