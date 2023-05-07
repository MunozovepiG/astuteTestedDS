import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_t_components/styles/buttons.dart';
import 'package:my_t_components/styles/fonts.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

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
                Text('Whatever page 2'),
                BTM16('The shy and plain', Colors.black, 1),
                DisabledRoundButton('Test', () {
                  Navigator.pushNamed(context, '/page1');
                })
              ],
            ))),
      ),
    );
  }
}
