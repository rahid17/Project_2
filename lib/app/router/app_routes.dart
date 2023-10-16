part of 'app_pages.dart';
abstract class Routes{
  Routes._();
  static const splashScreen = _Path.splashScreen;
  static const navScreen = _Path.navScreen;
  static const home = _Path.homeScreen;
  static const profile = _Path.profileScreen;
  static const login = _Path.loginScreen;
}


abstract class _Path{
  _Path._();
static const splashScreen = "/splashScreen";
static const navScreen = "/navScreen";
static const homeScreen = "/homeScreen";
static const profileScreen = "/profileScreen";
static const loginScreen = "/loginScreen";
}