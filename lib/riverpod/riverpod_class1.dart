// ignore_for_file: avoid_print

import 'package:b_app/riverpod/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TestRiverPod extends ConsumerWidget {
  const TestRiverPod({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
  print("rebuild main widget");
  // 2. Watch the counter value
    final counter = ref.watch(counterProvider);

    return Scaffold(
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'TestRiverPod',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            counter.toString(),
            
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          // 3. Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.green),
                ),
                onPressed: () {
                  print("rebuild + widget");

                  ref.read(counterProvider.notifier).state++;
                  print("Increment button pressed");
                },
                child: const Text('Increment'),
              ),

              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.grey),
                ),
                onPressed: () {
                  print("rebuild 0 widget");

                  ref.read(counterProvider.notifier).state = 0;
                  print("Reset button pressed");
                },
                child: const Text('Reset'),
              ),

              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.red),
                ),
                onPressed: () {
                  print("rebuild - widget");

                  ref.read(counterProvider.notifier).state--;
                  print("Decrement button pressed");
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
