import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_2/app/modules/home/views/home_view.dart';
import 'package:project_2/app/modules/profile/views/profile_view.dart';

class NavController extends GetxController{

List PageList =[
  HomeView() ,
  // CartView(),
  // MessageView(), 
  Text("cart"),
  Text("Message"),
  ProfileView()];
RxInt index =0.obs;

changeIndex( int changeIndexx){
  index.value= changeIndexx;
}

}