import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(appThemeServiceProvider);
    final routerConfig = ref.watch(routerProvider);
    final locale = ref.watch(appLocalizationServiceProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: routerConfig,
      themeMode: themeMode,
      theme: ref.watch(lightThemeProvider),
      darkTheme: ref.watch(darkThemeProvider),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: locale,
    );
  }
}
