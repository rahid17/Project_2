import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_2/app/modules/profile/controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Profile View "),
    );
  }
}