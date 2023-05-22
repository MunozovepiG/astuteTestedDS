import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_t_components/styles/buttons.dart';
import 'package:my_t_components/styles/fonts.dart';
import 'package:my_t_components/styles/headings.dart';
import 'package:my_t_components/styles/theme.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: MediaQuery.of(context).size.height * 100,
            color: Colors.white,
            child: Center(
                child: Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TrackingHeading(AppTheme.colors.lavender750,
                        'Example 1', 'description')),
                SmallView(Icons.arrow_forward_outlined, 'clickhere', () {
                  Navigator.pushNamed(context, '/page2');
                })
              ],
            ))),
      ),
    );
  }
}
