import 'package:enterprise_counter/components/components.dart';
import 'package:enterprise_counter/setup.dart';
import 'package:flutter/material.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

// ignore: todo
// TODO
// This should be refactored into the screen code
// once the screen base, navigation and component
// resolvation is implemented
var controller = CounterDisplayController(
  onChanged: () {
    print('update');
  },
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Enterprise Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: 'Enterprise Counter',
        counterController: locateService<CounterController>(),
        counterDisplay: locateService<CounterDisplay>(param1: controller),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
    required this.counterController,
    required this.counterDisplay,
  }) : super(key: key);

  final String title;
  final CounterController counterController;
  final CounterDisplay counterDisplay;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            widget.counterDisplay,
            widget.counterController,
            ElevatedButton(
                onPressed: () {
                  controller.reset();
                },
                child: const Text('Reset'))
          ],
        ),
      ),
    );
  }
}
