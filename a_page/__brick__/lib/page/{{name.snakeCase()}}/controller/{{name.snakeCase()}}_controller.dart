import '../../../global/global.dart';
import '../{{name.snakeCase()}}_provider.dart';

class {{name.pascalCase()}}Controller {
  final ProviderRef<{{name.pascalCase()}}Controller> ref;

  {{name.pascalCase()}}Controller(this.ref);

  void onInit() {
    debugPrint('{{name.pascalCase()}}Controller onInit');
  }
}
