import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_2/app/modules/splash_screen/controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 20,), 
            Text("Loading...")
          ],
        ),
      ),
    );
  }
}