import 'package:enterprise_counter/bases/bases.dart';
import 'package:enterprise_counter/screens/home/home_screen_vm.dart';
import 'package:flutter/material.dart';

class HomeScreen extends BaseScreenView<HomeScreenViewModel> {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget buildScreen({required BuildContext context}) {
    return Column(
      children: [
        const Text('Home'),
        ElevatedButton(
          onPressed: () {
            viewModel.goToCounterScreen();
          },
          child: const Text('Counter'),
        )
      ],
    );
  }
}
