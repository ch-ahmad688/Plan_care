import 'package:flutter/material.dart';
import 'package:get/get.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Body.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Enjoy your life \n with plants',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 50),
                IconButton(
                  onPressed: () {
                    Get.offAndToNamed('/splashscreen');
                  },
                  icon: Image.asset(
                    'assets/Icon/arrow-right 2.png',
                    width: 200,
                    height: 60,
                  ),
                  iconSize: 60,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}