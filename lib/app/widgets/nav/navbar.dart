import 'package:flutter/material.dart';
import '../../constants/theme.dart';
import 'nav_button.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.secondary,
      centerTitle: true,
      automaticallyImplyLeading: false,

      /// Name
      title: Container(
        constraints: const BoxConstraints(maxWidth: 1150),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: AppColors.primaryDark,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Image.asset('./assets/image/vd.png'),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'Viresh Dev',
              style: TextStyle(
                  color: AppColors.primaryDark, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            ...navigation
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
