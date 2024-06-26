import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sliver_card_animation/sources/widgets/custom_bottom_description.dart';

class DataCutRectangle extends StatelessWidget {
  const DataCutRectangle({
    Key? key,
    required this.size,
    required this.percent,
  }) : super(key: key);

  final Size size;
  final double percent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: size.width * 0.34, top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: percent > 0.13
                    ? size.width * pow(percent, 5.5).clamp(0.0, 0.2)
                    : 0,
                top: size.height *
                    (percent > 0.48
                        ? pow(percent, 10.5).clamp(0.0, 0.06)
                        : 0.0)),
            child: const Text(
              'How i met your mother',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              textAlign: TextAlign.start,
            ),
          ),
          if (percent < 0.50) ...[
            const SizedBox(
              height: 2,
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: (1 - pow(percent, 0.001)).toDouble(),
              child: const CustomBottomDescription(),
            )
          ]
        ],
      ),
    );
  }
}
