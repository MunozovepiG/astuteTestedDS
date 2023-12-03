import 'package:flutter/material.dart';
import 'package:my_t_components/styles/fonts.dart';
import 'package:my_t_components/styles/spaces.dart';

class TwoItemLabel extends StatelessWidget {
  String? labelText;
  Color? color;
  String? descriptionText;

  TwoItemLabel(
    this.labelText,
    this.color,
    this.descriptionText
  );
  Widget build(BuildContext context) {
    return Column(
      children: [
        BBRS12('$labelText', color, 1),
        SizedBox(
          height: 4,
        ),
        BBRM14('$descriptionText', color, 1),
      ],
    );
  }
}
