import '../../../global/global.dart';
import '../{{name.snakeCase()}}_provider.dart';

class {{name.pascalCase()}}Controller {
    final Ref ref;

  {{name.pascalCase()}}Controller(this.ref) {
    _init();
  }

  void _init() {
    debugPrint('🚀 {{name.pascalCase()}}Controller onInit');
  }
}
