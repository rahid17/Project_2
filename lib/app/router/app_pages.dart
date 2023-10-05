import 'package:get/get.dart';
import 'package:project_2/app/modules/splash_screen/views/splash_view.dart';
import 'package:project_2/app/router/app_routes.dart';

class AppPages{
static const initialPage = Route.splashScreen;
static final pages = [GetPage(name: "Splash Screen", page: () => SplashView(), )];
}