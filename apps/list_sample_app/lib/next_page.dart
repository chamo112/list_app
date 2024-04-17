import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  NextPage(this.label, {super.key});
  String label;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('次の画面'),
      ),
      body: Center(
        child: Text(label),
      ),
    );
  }
}
