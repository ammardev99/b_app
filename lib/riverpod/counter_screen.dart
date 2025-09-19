import 'package:flutter/material.dart';
import 'state_providers/counter_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyCounterRiverpod extends ConsumerWidget {
  const MyCounterRiverpod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(myCounter);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              counter.toString(),
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  ref.read(myCounter.notifier).state++;
                },
                child: const Text('Increment'),
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(myCounter.notifier).state = 0;
                },
                child: const Text('Reset'),
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(myCounter.notifier).state--;
                },
                child: const Text('Decrement'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
