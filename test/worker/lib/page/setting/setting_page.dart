import 'package:flutter/material.dart';

import '../../../global/global.dart';
import 'setting_provider.dart';

class SettingPage extends ConsumerWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(settingProvider);


    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting Page'),
      ),
      body: const Center(
        child: Text('This is Setting Page'),
      ),
    );
  }
}
