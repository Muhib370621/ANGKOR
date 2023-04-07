import 'package:angkor/src/core/routes/routeNames.dart';
import 'package:angkor/src/view/screen/dashBoardScreen.dart';
import 'package:angkor/src/view/screen/distributor/distributorDetails.dart';
import 'package:angkor/src/view/screen/drawer/manageUsers.dart';
import 'package:angkor/src/view/screen/onBoarding/appLoader.dart';
import 'package:angkor/src/view/screen/onBoarding/loginScreen.dart';
import 'package:angkor/src/view/screen/onBoarding/otpVerificationScreen.dart';
import 'package:angkor/src/view/screen/onBoarding/signupScreen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';



class AppRoutes {
  static final routes = [
    GetPage(
      name: RouteNames.bottomNav,
      page: () =>  DashBoard(),
    ),
    GetPage(
      name: RouteNames.appLoader,
      page: () => const AppLoader(),
    ),
    GetPage(
      name: RouteNames.loginScreen,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: RouteNames.signUpScreen,
      page: () => const SignUpScreen(),
    ),
    GetPage(
      name: RouteNames.otpVerificationScreen,
      page: () => const OTPVerificationScreen(),
    ),
    GetPage(
      name: RouteNames.manageUsers,
      page: () => const ManageUsers(),
    ),
    GetPage(
      name: RouteNames.distributorDetails,
      page: () => const DistributorDetails(),
    ),
  ];
}
