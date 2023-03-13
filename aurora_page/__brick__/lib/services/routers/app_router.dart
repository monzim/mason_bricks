 // TODO: Move this to corect Position
import '/src/pages/{{pageName.snakeCase()}}/{{pageName.snakeCase()}}_page.dart';


@immutable
class AppRouterPath {
  static const String {{pageName.camelCase()}} = '/{{pageName.camelCase()}}';
}

@TypedGoRoute<{{pageName.pascalCase()}}PageRoute>(
  path = AppRouterPath.{{pageName.camelCase()}},
  routes = <TypedGoRoute<GoRouteData>>[],
)
class {{pageName.pascalCase()}}PageRoute extends GoRouteData {
  const {{pageName.pascalCase()}}PageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const {{pageName.pascalCase()}}Page();
}