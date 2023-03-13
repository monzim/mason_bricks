import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/services/riverpod/riverpod.dart';

part '{{pageName.snakeCase()}}_provider.g.dart';

@riverpod
void {{pageName.camelCase()}}Page(
  {{pageName.pascalCase()}}PageRef ref, {
  bool isDebug = false,
}) {
  if (isDebug) {
    final hash = ref.formatHash;

    ProviderHelper.onInit('{{pageName.pascalCase()}}PageProvider', hash);
    ref.onResume(() => ProviderHelper.onWatch('{{pageName.pascalCase()}}PageProvider', hash));
    ref.onDispose(() => ProviderHelper.onDispose('{{pageName.pascalCase()}}PageProvider', hash));
  }
}
