import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_t_components/styles/fonts.dart';
import 'package:my_t_components/styles/theme.dart';

class SmallAlertBox extends StatelessWidget {
  final String title;
  final String message1;
  final String message2;
  final String positiveText;
  final String negativeText;

  SmallAlertBox(
      {required this.title,
      required this.message1,
      required this.message2,
      required this.positiveText,
      required this.negativeText});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppTheme.colors.background,
      title: Text(
        title,
        style: GoogleFonts.montserrat(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      content: Text(
        message1,
        style: GoogleFonts.montserrat(fontSize: 14, color: Colors.black),
      ),
      actions: <Widget>[
        TextButton(
          child: Text(
            positiveText,
            style: GoogleFonts.roboto(
                color: AppTheme.colors.blue500,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          onPressed: () {
            // Do something here
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: Text(
            negativeText,
            style: GoogleFonts.roboto(
                color: AppTheme.colors.blue500,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}

class LargeAlertBox extends StatelessWidget {
  final String title;
  final String message1;
  final String message2;
  final String positiveText;
  final String negativeText;

  LargeAlertBox(
      {required this.title,
      required this.message1,
      required this.message2,
      required this.positiveText,
      required this.negativeText});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppTheme.colors.background,
      title: Text(
        title,
        style: GoogleFonts.montserrat(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      content: Column(
        children: [
          Text(
            message1,
            style: GoogleFonts.montserrat(fontSize: 14, color: Colors.black),
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          child: Text(
            positiveText,
            style: GoogleFonts.roboto(
                color: AppTheme.colors.blue500,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          onPressed: () {
            // Do something here
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: Text(
            negativeText,
            style: GoogleFonts.roboto(
                color: AppTheme.colors.blue500,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
