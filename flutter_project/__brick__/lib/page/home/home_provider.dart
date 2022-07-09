import '../../global/global.dart';
import 'controller/home_controller.dart';

final homeProvider =
    Provider<HomeController>((ref) => HomeController(ref.read));
