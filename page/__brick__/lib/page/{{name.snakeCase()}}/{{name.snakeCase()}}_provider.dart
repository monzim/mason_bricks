import '../../global/global.dart';
import 'controller/{{name.snakeCase()}}_controller.dart';

final {{name.camelCase()}}Provider = Provider<{{name.pascalCase()}}Controller>((ref) {
  return {{name.pascalCase()}}Controller(ref);
});
