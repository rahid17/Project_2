import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_2/app/modules/login/controller/login_controller.dart';
import 'package:project_2/widgets/kAppBar.dart';

import '../../../../widgets/KTextFormField.dart';



class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});
  
  @override
  Widget build(BuildContext context) {
   final controller = Get.put(LoginController());
    return Scaffold(
      appBar: KAppBar(title: "Input Username"),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Enter User Name:"),
            SizedBox(height: 20,),
            KTextFromField(
              controller: controller.textEditingController,
              label: Text("Enter"),
            ),
            SizedBox(height: 20,),

            ElevatedButton(onPressed: () {
              print("User submit button pressed");
              controller.checkData();
            } , child: Text("Check"))
          ],
        ),
      ),
    );
  }
}

