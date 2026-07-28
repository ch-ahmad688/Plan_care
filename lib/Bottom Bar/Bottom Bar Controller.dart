import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Files/Files.dart';
import '../Home/Home.dart';
import '../Profile/Profile.dart';
import '../Search/Search.dart';

class Bottom_bar_controller extends GetxController{
  int currentindex =0;
  late PageController pageController;
  late List<Widget> pages;
  @override
  void onInit(){
    super.onInit();


    pageController = PageController(initialPage: currentindex);
    pages=[
      Home(),
      Search(),
      Files(),
      Profile(),
    ];

  }
  void changePage(int index){
    if(currentindex==index) return;
    currentindex==index;
    pageController.animateToPage(
      index,
      duration:Duration(milliseconds: 100),
      curve: Curves.bounceInOut,
    );
    update();
  }

  void onPageChanged(int index){
    currentindex==index;
    update();
  }

  void onClosed(){
    pageController.dispose();
    super.onClose();
  }

}