import 'package:flutter/material.dart';

import '../global/global.dart';

// TODO:Run This command: flutter pub add flutter_riverpod google_fonts go_router

void main() {
  runApp(
    ProviderScope(
      observers: [Logger()],
      child: const AppRoot(),
    ),
  );
}

class AppRoot extends ConsumerWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final themeMode = ref.watch(themeModeProvider);
    final goRouter = ref.watch(routerProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,
      theme: theme.lightTheme,
      darkTheme: theme.darkTheme,
      routerConfig: goRouter,
    );
  }
}
