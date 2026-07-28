import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Bottom Bar Controller.dart';

class Bottom_bar extends StatelessWidget {
  const Bottom_bar({super.key});

  @override
  Widget build(BuildContext context) {
    final Bottom_bar_controller controller = Get.put(Bottom_bar_controller());

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: GetBuilder<Bottom_bar_controller>(
        builder: (controller) => PageView(
          controller: controller.pageController,
          onPageChanged: controller.onPageChanged,
          children: controller.pages,
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey.shade300,
              width: 1.0,
            ),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: controller.currentindex,
          onTap: controller.changePage,
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/Icon/Vector.png')),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/Icon/Vector(1).png')),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/Icon/Vector(2).png')),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/Icon/Vector(3).png')),
              label: 'Profile',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
        ),
      ),
    );
  }
}