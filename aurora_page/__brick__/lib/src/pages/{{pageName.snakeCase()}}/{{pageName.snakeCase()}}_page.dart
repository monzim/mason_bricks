import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kDebugMode;

import '/src/global/global.dart';

// ignore: unused_import
import 'providers/{{pageName.snakeCase()}}_provider.dart';

class {{pageName.pascalCase()}}Page extends ConsumerWidget {
  const {{pageName.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch({{pageName.camelCase()}}PageProvider(isDebug: kDebugMode));

    return Scaffold(
      appBar: AppBar(
        title: const Text('{{pageName.pascalCase()}} Page'),
      ),
      body: const Center(
        child: Text('This is {{pageName.pascalCase()}} Page'),
      ),
    );
  }
}
