import 'package:flutter/material.dart';
import '../../constants/responsive.dart';
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
        padding:
            EdgeInsets.symmetric(horizontal: Screen.isWeb(context) ? 30 : 0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: AppColors.primaryDark,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
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
            if (Screen.isWeb(context)) ...navigation,
            if (!Screen.isWeb(context))
              IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: AppColors.primaryDark,
                  ))
          ],
        ),
      ),
      actions: [Container()],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
