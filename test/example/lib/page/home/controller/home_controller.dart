import '../../../global/global.dart';

class HomeController {
  final Ref ref;

  HomeController(this.ref) {
    _init();
  }

  void _init() {
    debugPrint('🚀 HomeController Initialize');
  }
}
