import 'package:flutter/material.dart';
import 'package:my_t_components/styles/buttons.dart';
import 'package:my_t_components/styles/fonts.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: MediaQuery.of(context).size.height * 100,
            color: Colors.amber,
            child: Center(
                child: Column(
              children: [
                Text('Whatever page 1'),
                BTM36('Amber is this you?', Colors.black, 1),
                NeonActiveButton('HomePage', () {
                  Navigator.pushNamed(context, '/');
                })
              ],
            ))),
      ),
    );
  }
}
