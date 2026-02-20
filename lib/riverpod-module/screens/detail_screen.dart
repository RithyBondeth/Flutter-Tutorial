import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/riverpod-module/models/user_model.dart';
import 'package:flutter_tutorial/riverpod-module/providers/counter_provider.dart';
import 'package:flutter_tutorial/riverpod-module/providers/users_provider.dart';

class RiverpodDetailScreen extends ConsumerWidget {
  const RiverpodDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    AsyncValue<List<UserModel>> usersDataAsync = ref.watch(usersDataProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter: $counter'),
        leading: IconButton(
          onPressed: () => ref.read(counterProvider.notifier).reset(),
          icon: Icon(Icons.refresh),
        ),
      ),
      body: usersDataAsync.when(
        data: (users) => RefreshIndicator.adaptive(
          onRefresh: () => ref.read(usersDataProvider.notifier).refresh(),
          child: SingleChildScrollView(
            child: Center(
              child: (Column(
                children: [
                  for (int index = 0; index < users.length; index++)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text("${index + 1}. ${users[index].name}"),
                    ),
                ],
              )),
            ),
          ),
        ),
        error: (error, st) => Center(child: Text("Error: $error")),
        loading: () => Center(child: CircularProgressIndicator.adaptive()),
      ),
    );
  }
}
