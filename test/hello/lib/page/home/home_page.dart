import 'package:flutter/material.dart';

import '../../global/global.dart';
import 'home_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(homeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () => ref.read(themeProvider).toggleTheme(ref),
          icon: Icon(Theme.of(context).customOption.themeIcon),
          label: const Text('Toggle Theme'),
        ),
      ),
    );
  }
}
