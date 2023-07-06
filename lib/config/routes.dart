import 'package:adambarbershop/screens/auth/signup/signin.dart';
import 'package:adambarbershop/screens/get_started/get_started.dart';
import 'package:adambarbershop/screens/splash/splash_screen.dart';
import 'package:get/get.dart';

const routeSplash = '/Splash';
const routeGetStarted = '/GetStarted';
const routeSignin = '/Signin';

class Routes {
  static final routes = [
    GetPage(
      name: routeSplash,
      page: () => const SplashScreen(),
      transitionDuration: const Duration(milliseconds: 0),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: routeGetStarted,
      page: () => const GetStarted(),
      transitionDuration: const Duration(milliseconds: 0),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: routeSignin,
      page: () => const Signin(),
      transitionDuration: const Duration(milliseconds: 0),
      transition: Transition.noTransition,
    ),
    // GetPage(
    //   name: routeHomeScreen,
    //   page: () => const HomeScreen(),
    //   transitionDuration: const Duration(milliseconds: 0),
    //   transition: Transition.noTransition,
    // ),
  ];
}
