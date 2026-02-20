import 'package:flutter_tutorial/riverpod-module/notifiers/counter_notifier.dart';
import 'package:riverpod/riverpod.dart';

final counterProvider = NotifierProvider<CounterNotifier, int>(
  CounterNotifier.new,
);
