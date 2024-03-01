import 'package:flutter/material.dart';
import 'package:my_portfolio/app/constants/theme.dart';

class NavButton extends StatelessWidget {
  const NavButton({
    super.key,
    required this.name,
    required this.screen,
  });

  final String name;
  // final Widget screen;
  final String screen;

  @override
  Widget build(BuildContext context) {
    bool isSelected = ModalRoute.of(context)?.settings.name == '/$screen';

    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color:
                      isSelected ? AppColors.primaryDark : Colors.transparent,
                  width: 3.0))),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/$screen');
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => screen),
          // );
        },
        child: Text(
          name,
          // style: TextStyle(color: isSelected ? Colors.white : null),
        ),
      ),
    );
  }
}

final List<NavButton> navigation = [
  const NavButton(
    name: 'Home',
    screen: '',
    // screen: HomeScreen(),
  ),
  const NavButton(
    name: 'About',
    screen: 'about',
    // screen: AboutScreen(),
  ),
  const NavButton(
    name: 'Projects',
    screen: 'projects',

    // screen: ProjectScreen(),
  ),
  const NavButton(
    name: 'Blog',
    screen: 'blog',

    // screen: BlogScreen(),
  ),
  const NavButton(
    name: 'Contact',
    screen: 'contact',

    // screen: ContactScreen(),
  ),
];
