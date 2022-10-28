import '../../../global/global.dart';
import '../monzim_provider.dart';

class MonzimController {
    final Ref ref;

  MonzimController(this.ref) {
    _init();
  }

  void _init() {
    debugPrint('MonzimController onInit');
  }
}
