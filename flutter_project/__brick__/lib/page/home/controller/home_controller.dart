import '../../../global/global.dart';

class HomeController {
  final Reader read;

  HomeController(this.read) {
    _init();
  }

  void _init() {
    debugPrint('HomeController Initialize');
  }
}
