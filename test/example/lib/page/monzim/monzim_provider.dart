import '../../global/global.dart';
import 'controller/monzim_controller.dart';

final monzimProvider = Provider<MonzimController>((ref) {
  return MonzimController(ref);
});
