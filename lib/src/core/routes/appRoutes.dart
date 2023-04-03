import 'package:angkor/src/core/routes/routeNames.dart';
import 'package:angkor/src/view/screen/dashBoardScreen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';



class AppRoutes {
  static final routes = [
    GetPage(
      name: RouteNames.bottomNav,
      page: () => const DashBoard(),
    ),
  ];
}
