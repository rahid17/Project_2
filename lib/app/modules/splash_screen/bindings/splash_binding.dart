import 'package:get/get.dart';
import 'package:project_2/app/modules/splash_screen/controllers/splash_controller.dart';

class SplashBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}