import '../../../global/global.dart';
import '../home_provider.dart';

class HomeController {
  final ProviderRef<HomeController> ref;

  HomeController(this.ref);

  void init() {
    print('HomeController init');
  }
}
