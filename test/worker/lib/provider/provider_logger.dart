import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    if (kDebugMode) {
      print('👀 [${provider.name ?? provider.runtimeType}] '
          'changed from 👉 $previousValue to 👉 $newValue 👈');
    }
  }
}
