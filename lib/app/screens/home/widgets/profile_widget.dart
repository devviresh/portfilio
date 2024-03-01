import 'package:flutter/material.dart';

import '../../../constants/theme.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size,
      backgroundColor: AppColors.primaryDark,
      child: CircleAvatar(
        radius: size - 2,
        backgroundColor: AppColors.secondary,
        child: CircleAvatar(
          radius: size - 4,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.asset('./assets/image/profile.jpg')),
        ),
      ),
    );
  }
}
