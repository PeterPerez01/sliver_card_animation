import 'package:flutter/material.dart';

class CustomBottomDescription extends StatelessWidget {
  const CustomBottomDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Romance 💌 Comedia 🎭 Comedia Romántica 🌹',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          '208 episodios',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
