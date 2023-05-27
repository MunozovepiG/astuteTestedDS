import 'package:flutter/material.dart';
import 'package:my_t_components/page/page1.dart';
import 'package:my_t_components/page/page2.dart';
import 'package:my_t_components/styles/buttons.dart';
import 'package:my_t_components/styles/components.dart';
import 'package:my_t_components/styles/fonts.dart';
import 'package:my_t_components/styles/pop-up.dart';
import 'package:my_t_components/styles/selections.dart';
import 'package:my_t_components/styles/spaces.dart';
import 'package:my_t_components/styles/textformfields.dart';
import 'package:my_t_components/styles/theme.dart';
import 'package:my_t_components/styles/tracker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {'/page1': (context) => Page1(), '/page2': (context) => Page2()},
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _selectedOption = '';
  String example = '';

  void _handleRadioValueChanged(String value) {
    setState(() {
      _selectedOption = value;
      example = _selectedOption;
      print(example);
    });
  }

  @override
  Widget build(BuildContext context) {
    bool test = false;
    String? valueExtract;
    final TextEditingController _emailController = TextEditingController();
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.90,
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // Column is also a layout widget. It takes a list of children and
                      // arranges them vertically. By default, it sizes itself to fit its
                      // children horizontally, and tries to be as tall as its parent.
                      //
                      // Invoke "debug painting" (press "p" in the console, choose the
                      // "Toggle Debug Paint" action from the Flutter Inspector in Android
                      // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
                      // to see the wireframe for each widget.
                      //
                      // Column has various properties to control how it sizes itself and
                      // how it positions its children. Here we use mainAxisAlignment to
                      // center the children vertically; the main axis here is the vertical
                      // axis because Columns are vertical (the cross axis would be
                      // horizontal).
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CBButton(),
                        TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return SmallAlertBox(
                                    mainColor: AppTheme.colors.blue500,
                                    title: 'Small Alert Box',
                                    message1: 'Message 1',
                                    message2: '',
                                    positiveText: 'Yes',
                                    negativeText: 'Cancel',
                                    positiveAction: () {},
                                    negativeAction: () {},
                                  );
                                });
                          },
                          child: Text('Click here'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
