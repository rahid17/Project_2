import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:project_2/app/modules/mainAppPage.dart/controller/mainApp_controller.dart';
import 'package:project_2/themes/dark.dart';
import 'package:project_2/themes/light.dart';

import '../../../router/app_pages.dart';

class MyApp extends GetView<MyAppController> {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      initialRoute: AppPages.initialPage,
      getPages: AppPages.pages,
      
    );
  }
}