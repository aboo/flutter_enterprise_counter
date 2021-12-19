import 'package:enterprise_counter/bases/bases.dart';
import 'package:enterprise_counter/components/components.dart';
import 'package:flutter/material.dart';

class CounterScreen extends BaseScreenView {
  CounterScreen({Key? key}) : super(key: key);
  final controller = CounterDisplayController(
    onChanged: () {
      print('update');
    },
  );

  @override
  Widget buildScreen({required BuildContext context}) {
    return Column(
      children: [
        getComponent<CounterDisplay>(param1: controller),
        buildSpacer(),
        getComponent<CounterController>(),
        buildSpacer(),
        ElevatedButton(
            onPressed: () {
              controller.reset();
            },
            child: const Text('Reset'))
      ],
    );
  }

  Widget buildSpacer() {
    return const SizedBox(
      height: 10,
    );
  }
}
