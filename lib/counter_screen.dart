import 'package:flutter/material.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
            backgroundColor: Colors.grey[850],
            title:
                const Text('Counter', style: TextStyle(color: Colors.amber))),
        body: const Center(
          child:
              Text('0', style: TextStyle(fontSize: 100, color: Colors.amber)),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.green[400],
              child: const Icon(Icons.add),
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.red[400],
              child: const Icon(Icons.remove),
            ),
          ],
        ));
  }
}
