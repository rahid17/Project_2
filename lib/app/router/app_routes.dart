part of 'app_pages.dart';
abstract class Route{
  Route._();
  static const splashScreen = _Path.splashScreen;
  static const navScreen = _Path.navScreen;
  static const home = _Path.homeScreen;
  static const profile = _Path.profileScreen;
}


abstract class _Path{
  _Path._();
static const splashScreen = "/splashScreen";
static const navScreen = "/navScreen";
static const homeScreen = "/homeScreen";
static const profileScreen = "/profileScreen";
}