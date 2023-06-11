import 'package:flutter/material.dart';
import 'package:my_t_components/styles/fonts.dart';

class TwoItemLabel extends StatelessWidget {
  String? text;
  Color? color;

  TwoItemLabel(this.text, this.color, this.maxlines);
  Widget build(BuildContext context) {
    return Column(
      children: [BBRS12('$text', color, 1)],
    );
  }
}
