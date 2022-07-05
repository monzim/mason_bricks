import 'package:flutter/material.dart';

import '../global/global.dart';

// TODO:Run This command: flutter pub add flutter_riverpod google_fonts go_router

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

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
      routeInformationProvider: goRouter.router.routeInformationProvider,
      routeInformationParser: goRouter.router.routeInformationParser,
      routerDelegate: goRouter.router.routerDelegate,
    );
  }
}
