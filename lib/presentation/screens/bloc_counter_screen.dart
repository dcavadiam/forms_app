import 'package:flutter/material.dart';

class BlocCounterScreen extends StatelessWidget {
  const BlocCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bloc Counter'),
          actions: [
            IconButton(
                onPressed: () => {}, icon: const Icon(Icons.refresh_rounded))
          ],
        ),
        body: Center(
          child: const Text('Counter value: xx'),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () => {},
              heroTag: '1',
              child: const Text('+3'),
            ),
            const SizedBox(
              height: 15,
            ),
            FloatingActionButton(
              onPressed: () => {},
              heroTag: '2',
              child: const Text('+2'),
            ),
            const SizedBox(
              height: 15,
            ),
            FloatingActionButton(
              onPressed: () => {},
              heroTag: '3',
              child: const Text('+1'),
            ),
          ],
        ));
  }
}