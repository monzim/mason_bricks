import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'app_router.dart';
part 'router_provider.g.dart';

@Riverpod(keepAlive: true)
// ignore: unsupported_provider_value
GoRouter router(RouterRef ref) {
  final key = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

  return GoRouter(
    navigatorKey: key,
    debugLogDiagnostics: true,
    // ignore: avoid_manual_providers_as_generated_provider_depenency
    initialLocation: ref.watch(initialRouteProvider),
    routes: $appRoutes,
  );
}
