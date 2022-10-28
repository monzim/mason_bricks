import '../../../global/global.dart';
import '../setting_provider.dart';

class SettingController {
  final Ref ref;

  SettingController(this.ref) {
    _init();
  }

  void _init() {
    debugPrint('SettingController onInit');
  }
}
