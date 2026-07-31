import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Files/Files.dart';
import '../Home/Home.dart';
import '../Profile/Profile.dart';
import '../Search/Search.dart';

class Bottom_bar_controller extends GetxController {
  var currentindex = 0.obs;
  late PageController pageController;
  late List<Widget> pages;

  @override
  void onInit() {
    super.onInit();

    pageController = PageController(initialPage: currentindex.value);
    pages = [
      const Home(),
      const Search(),
      const Files(),
      const Profile(),
    ];
  }

  void changePage(int index) {
    if (currentindex.value == index) return;
    currentindex.value = index;
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void onPageChanged(int index) {
    currentindex.value = index;
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}