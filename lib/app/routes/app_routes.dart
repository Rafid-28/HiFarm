import 'package:get/get.dart';
import 'package:hi_farm/app/modules/home/views/home_view.dart';

class RoutesClass {
  static String home = '/';

  static String getHomeRoute() => home;

  static List<GetPage> routes = [
    // GetPage(name: home, page: () => HomeView()),
    GetPage(name: home, page: () => ShopPage()),
  ];
}
