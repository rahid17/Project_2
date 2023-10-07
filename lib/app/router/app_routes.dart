part of 'app_pages.dart';
abstract class Route{
  Route._();
  static const splashScreen = _Path.splashScreen;
  static const navScreen = _Path.navScreen;
}


abstract class _Path{
  _Path._();
static const splashScreen = "/splashScreen";
static const navScreen = "/navScreen";
}