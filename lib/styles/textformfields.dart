import 'package:flutter/material.dart';
import 'package:my_t_components/styles/fonts.dart';
import 'package:my_t_components/styles/spaces.dart';
import 'package:my_t_components/styles/theme.dart';

class MyCustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final void Function(String)? onChanged;
  final Color backgroundColor;
  final String inputLabelText;

  MyCustomTextField({
    Key? key,
    required this.controller,
    this.validator,
    this.hintText,
    this.labelText,
    this.keyboardType,
    this.obscureText = false,
    this.onChanged,
    required this.backgroundColor,
    required this.inputLabelText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ILM12(inputLabelText, AppTheme.colors.grey650, 1),
          SS8(),
          Container(
            width: MediaQuery.of(context).size.width * 0.90,
            height: 56,
            color: backgroundColor,
            child: TextFormField(
              controller: controller,
              validator: validator,
              decoration: InputDecoration(
                  hintText: hintText,
                  labelText: labelText,
                  labelStyle: TextStyle(
                    color: AppTheme.colors.grey650,
                    fontSize: 12,
                    fontFamily: 'Roboto',
                  )),
              keyboardType: keyboardType,
              obscureText: obscureText,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
