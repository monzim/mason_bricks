import '../global/global.dart';
import '../page/error/error_page.dart';
import '../page/home/home_page.dart';
import '../page/setting/setting_page.dart';

class AppRouter {
  static String get homePage => '/home';
  static const String _homePath = '/';

  static String get settingPage => 'setting';
  static const String _settingPath = '/setting';

  GoRouter router = GoRouter(
    initialLocation: _homePath,
    // turn off history tracking in the browser for all navigation
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: homePage,
        path: _homePath,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        name: settingPage,
        path: _settingPath,
        builder: (context, state) => const SettingPage(),
      ),
    ],
    errorBuilder: (context, state) => ErrorPage(state.error!),
  );
}
