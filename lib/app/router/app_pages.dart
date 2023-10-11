import 'package:get/get.dart';
import 'package:project_2/app/modules/home/bindings/home_bindings.dart';
import 'package:project_2/app/modules/home/views/home_view.dart';
import 'package:project_2/app/modules/nav_bar/bindings/nav_binding.dart';
import 'package:project_2/app/modules/nav_bar/views/nav_view.dart';
import 'package:project_2/app/modules/profile/bindings/profile_binding.dart';
import 'package:project_2/app/modules/profile/views/profile_view.dart';
import 'package:project_2/app/modules/splash_screen/bindings/splash_binding.dart';
import 'package:project_2/app/modules/splash_screen/views/splash_view.dart';

part 'app_routes.dart';
class AppPages{
static const initialPage = Route.splashScreen;
static final pages = [
  GetPage(
    name: _Path.splashScreen, 
    page: () =>const SplashView(),
    binding: SplashBinding()
 ),
 GetPage(
    name: _Path.navScreen, 
    page: () =>const NavView(),
    binding: NavBindings()
 ),
 GetPage(
  name: _Path.homeScreen, 
  page: () => const HomeView(),
  binding: HomeBinding()
  ),
 GetPage(
  name: _Path.profileScreen, 
  page: () => const ProfileView(),
  binding: ProfileBinding()
  ),
 ];
}