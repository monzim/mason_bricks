import 'package:flutter/material.dart';
import 'package:flutter_monzim/src/pages/home/home_page.dart';
import 'package:flutter_monzim/src/pages/settings/settings_page.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@Riverpod(keepAlive: true)
String initialRoute(InitialRouteRef ref) {
  return AppRouterPath.home;
}

@immutable
class AppRouterPath {
  static const String home = '/';
  static const String settings = '/settings';
}

@TypedGoRoute<HomeRoute>(
  path: AppRouterPath.home,
  routes: <TypedGoRoute<GoRouteData>>[],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}

@TypedGoRoute<SettingsRoute>(
  path: AppRouterPath.settings,
  routes: <TypedGoRoute<GoRouteData>>[],
)
class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsPage();
}
