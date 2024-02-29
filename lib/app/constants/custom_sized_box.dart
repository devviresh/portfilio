import 'package:flutter/material.dart';

class ScalableSB extends StatelessWidget {
  const ScalableSB({
    Key? key,
    this.height,
    this.width,
    this.child,
  }) : super(key: key);
  final double? height;
  final double? width;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: child,
    );
  }
}

//region Height Size Boxes : height
class SBH5 extends StatelessWidget {
  const SBH5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScalableSB(height: 5);
  }
}

class SBH10 extends StatelessWidget {
  const SBH10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScalableSB(height: 10);
  }
}

class SBH20 extends StatelessWidget {
  const SBH20({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScalableSB(height: 20);
  }
}

class SBH30 extends StatelessWidget {
  const SBH30({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScalableSB(height: 30);
  }
}

class SBH50 extends StatelessWidget {
  const SBH50({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScalableSB(height: 50);
  }
}

class SBH100 extends StatelessWidget {
  const SBH100({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScalableSB(height: 100);
  }
}

//region Width Size Boxes : width
class SBW5 extends StatelessWidget {
  const SBW5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScalableSB(width: 5);
  }
}

class SBW10 extends StatelessWidget {
  const SBW10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScalableSB(width: 10);
  }
}

class SBW20 extends StatelessWidget {
  const SBW20({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScalableSB(width: 20);
  }
}

class SBW30 extends StatelessWidget {
  const SBW30({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScalableSB(width: 30);
  }
}

class SBW50 extends StatelessWidget {
  const SBW50({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScalableSB(width: 50);
  }
}
