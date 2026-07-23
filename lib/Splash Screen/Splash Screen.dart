import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD2EFDA),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 75),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 5,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff000000),
                ),
              ),
              Container(
                height: 5,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff748478),
                ),
              ),
              Container(
                height: 5,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff748478),
                ),
              )
            ],
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/pexels-rachel-claire-4846104 2.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Healthy plants',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 40,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Taking care of plants can be very rewarding,'
                  '\n even if the plant is a fern and doesn\'t produce '
                  '\nfragrant flowers...',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Color(0xff839588),
              ),
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: SafeArea(
                child: IconButton(
                  onPressed: () {
                    Get.offAndToNamed('/loginscreen');
                  },
                  icon: Image.asset(
                    'assets/Icon/arrow-right 2.png',
                    height: 60,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}