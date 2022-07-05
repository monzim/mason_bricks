import 'package:flutter/material.dart';

import '../../../global/global.dart';
import '{{name.snakeCase()}}_provider.dart';

class {{name.pascalCase()}}Page extends ConsumerWidget {
  const {{name.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch({{name.camelCase()}}Provider);


    return Scaffold(
      appBar: AppBar(
        title: const Text('{{name.pascalCase()}} Page'),
      ),
      body: const Center(
        child: Text('This is {{name.pascalCase()}} Page'),
      ),
    );
  }
}
