import '../../global/global.dart';
import 'controller/setting_controller.dart';

final settingProvider = Provider<SettingController>((ref) {
  return SettingController(ref);
});
