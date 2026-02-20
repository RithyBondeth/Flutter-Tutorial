import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/riverpod-module/providers/counter_provider.dart';
import 'package:flutter_tutorial/riverpod-module/screens/detail_screen.dart';

class MainRiverpodScreen extends ConsumerWidget {
  const MainRiverpodScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Riverpod Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
              onPressed: () => ref.read(counterProvider.notifier).increment(),
              label: Text('Increment'),
              icon: Icon(Icons.add),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text("Counter: $counter"),
            ),
            TextButton.icon(
              onPressed: () => ref.read(counterProvider.notifier).decrement(),
              label: Text('Decrement'),
              icon: Icon(Icons.remove),
            ),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => RiverpodDetailScreen()),
              ),
              child: Text('Navigate'),
            ),
          ],
        ),
      ),
    );
  }
}
