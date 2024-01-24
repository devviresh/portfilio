import 'package:flutter/material.dart';
import 'package:my_portfolio/app/constants/theme.dart';
import 'package:my_portfolio/app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Viresh Dev',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
      ),
      // onGenerateRoute: (settings) {
      //   return CustomPageRoute(
      //     builder: (context) => HomeScreen(),
      //     settings: settings,
      //   );
      // }
      home: const HomeScreen(),
    );
  }
}


// class CustomPageRoute<T> extends MaterialPageRoute<T> {
//   CustomPageRoute({
//     required WidgetBuilder builder,
//     RouteSettings? settings,
//   }) : super(builder: builder, settings: settings);

//   @override
//   Widget buildTransitions(
//     BuildContext context,
//     Animation<double> animation,
//     Animation<double> secondaryAnimation,
//     Widget child,
//   ) {
//     const begin = 0.0;
//     const end = 1.0;
//     var tween = Tween(begin: begin, end: end);
//     var opacityAnimation = tween.animate(animation);

//     return FadeTransition(
//       opacity: opacityAnimation,
//       child: child,
//     );
//   }
// }
