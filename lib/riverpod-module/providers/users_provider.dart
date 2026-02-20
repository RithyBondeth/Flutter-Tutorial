import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial/riverpod-module/data/users_api.dart';
import 'package:flutter_tutorial/riverpod-module/models/user_model.dart';
import 'package:flutter_tutorial/riverpod-module/notifiers/users_notifier.dart';
import 'package:flutter_tutorial/riverpod-module/providers/http_client_provider.dart';

final usersApiProvider = Provider<UsersApi>((ref) {
  final client = ref.watch(httpClientProvider);
  return UsersApi(client);
});

final usersDataProvider = AsyncNotifierProvider<UsersNotifier, List<UserModel>>(
  UsersNotifier.new,
);
