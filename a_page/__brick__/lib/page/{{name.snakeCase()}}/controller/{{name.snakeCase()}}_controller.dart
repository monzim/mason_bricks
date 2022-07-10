import '../../../global/global.dart';
import '../{{name.snakeCase()}}_provider.dart';

class {{name.pascalCase()}}Controller {
    final Reader read;

  {{name.pascalCase()}}Controller(this.read) {
    _init();
  }

  void _init() {
    debugPrint('{{name.pascalCase()}}Controller onInit');
  }
}
