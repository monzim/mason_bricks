import 'package:flutter/material.dart';

import '../../../global/global.dart';
import 'monzim_provider.dart';

class MonzimPage extends ConsumerWidget {
  const MonzimPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(monzimProvider);


    return Scaffold(
      appBar: AppBar(
        title: const Text('Monzim Page'),
      ),
      body: const Center(
        child: Text('This is Monzim Page'),
      ),
    );
  }
}
