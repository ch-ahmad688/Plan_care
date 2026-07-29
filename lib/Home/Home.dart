import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_care/Home/Home_Controller.dart';

import 'Model_Cart.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context,) {
    final Controller controller = Get.put(Controller());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text.rich(
                TextSpan(
                  text: "Let's make planning plants,",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: " Jane!",
                      style: TextStyle(
                        color: Color(0xff26C250),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: controller.model.length,
              itemBuilder: (context, index) {
                return ModelCart(
                  model: controller.model[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}