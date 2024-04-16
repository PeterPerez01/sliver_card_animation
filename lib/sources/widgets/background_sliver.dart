import 'package:flutter/material.dart';

class BackgroundSliver extends StatelessWidget {
  const BackgroundSliver({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      top: 0,
      child: Image(
        image: AssetImage(
          'assets/background.jpg',
        ),
        fit: BoxFit.cover,
      ),
    );
  }
}
