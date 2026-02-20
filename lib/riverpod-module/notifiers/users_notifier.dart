import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/riverpod-module/models/user_model.dart';
import 'package:flutter_tutorial/riverpod-module/providers/users_provider.dart';

class UsersNotifier extends AsyncNotifier<List<UserModel>> {
  @override
  Future<List<UserModel>> build() async {
    final api = ref.watch(usersApiProvider);
    return api.fetchUsers();
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    final api = ref.read(usersApiProvider);
    state = await AsyncValue.guard(api.fetchUsers);
  }
}
