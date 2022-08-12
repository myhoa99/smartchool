import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/onbroading_screen/bindings/onbroading_screen_binding.dart';
import '../modules/onbroading_screen/views/onbroading_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBROADING_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.ONBROADING_SCREEN,
      page: () => const OnbroadingScreenView(),
      binding: OnbroadingScreenBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
