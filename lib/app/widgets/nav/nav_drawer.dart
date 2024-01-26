import 'package:flutter/material.dart';

import '../../constants/theme.dart';
import 'nav_drawer_tile.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
      child: ListView(
        children: [
          ListTile(
            tileColor: AppColors.secondary,
            onTap: () {
              Navigator.pop(context);
            },
            titleAlignment: ListTileTitleAlignment.bottom,
            title: const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.close_rounded,
                  color: AppColors.primaryDark,
                )),
          ),
          ...drawerTiles,
        ],
      ),
    );
  }
}
