import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/riverpod-module/providers/counter_provider.dart';

class RiverpodDetailScreen extends ConsumerWidget {
  const RiverpodDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Detial Screen')),
      body: Center(
        child: (Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter: $counter"),
            TextButton.icon(
              onPressed: () => ref.read(counterProvider.notifier).reset(),
              icon: Icon(Icons.exposure_zero),
              label: Text("Reset Counter"),
            ),
          ],
        )),
      ),
    );
  }
}
