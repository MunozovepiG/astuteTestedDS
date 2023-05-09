import 'package:flutter/material.dart';
import 'package:my_t_components/styles/fonts.dart';
import 'package:my_t_components/styles/theme.dart';

//main medium buttons
class MediumMainButton extends StatelessWidget {
  final Color? color;
  final String text;
  final VoidCallback onPressed;

  MediumMainButton({this.color, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xffb3E63D3),
          shadowColor: Color.fromRGBO(24, 24, 22, 0.2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: onPressed,
        child: TBM14('${text}', color ?? Colors.white, 1));
  }
}

//neon active button

class NeonActiveButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  NeonActiveButton(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xffbCFF850)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ))),
      onPressed: onPressed,
      child: TBM14(text, AppTheme.colors.green800, 1),
    );
  }
}

//grey dis-actived button

class DisabledRoundButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  DisabledRoundButton(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppTheme.colors.grey400),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ))),
      onPressed: onPressed,
      child: TBM14(text, AppTheme.colors.grey800, 1),
    );
  }
}

//icon + text button

class IconTextButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  final VoidCallback onPressed;
  final Color textColor;

  IconTextButton(
      {required this.icon,
      required this.color,
      required this.text,
      required this.onPressed,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: Icon(
        icon,
        color: color,
      ),
      onPressed: onPressed,
      label: BB10(text, textColor, 1),
    );
  }
}

//Plain tex button

class PlainTextButton extends StatelessWidget {
  final Color color;
  final String text;
  final VoidCallback onPressed;
  final Color textColor;

  PlainTextButton(
      {required this.color,
      required this.text,
      required this.onPressed,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: BB10(text, textColor, 1),
    );
  }
}
