import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Bottom Bar Controller.dart';

class Bottom_bar extends StatelessWidget {
  const Bottom_bar({super.key});

  @override
  Widget build(BuildContext context) {
    final Bottom_bar_controller controller = Get.put(Bottom_bar_controller());

    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: PageView(
        controller: controller.pageController,
        onPageChanged: controller.onPageChanged,
        children: controller.pages,
      ),
      bottomNavigationBar: const _BottomNavBar(),
    );
  }
}

class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<Bottom_bar_controller>();

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: Colors.black,
            width: 0.25,
          ),
        ),
      ),
      child: Obx(
            () => BottomNavigationBar(
          currentIndex: controller.currentindex.value,
          onTap: controller.changePage,
          type: BottomNavigationBarType.fixed,
          elevation: 10,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/Icon/Vector.png'),
                size: 24,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/Icon/Vector (1).png'),
                size: 24,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/Icon/Vector (2).png'),
                size: 24,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/Icon/Vector (3).png'),
                size: 24,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}