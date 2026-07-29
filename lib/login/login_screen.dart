import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_care/Bottom%20Bar/Bottom%20Bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD2EFDA),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.25),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.75,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 25),
                  const Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff0F4336),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Enter your details to continue',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff202020),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'E-mail',
                        labelStyle: const TextStyle(
                          color: Color(0xffBFBFBF),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xffBFBFBF),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xffBFBFBF),
                          ),
                        ),
                        hintText: 'example@gmail.com',
                        hintStyle: const TextStyle(
                          color: Color(0xffBFBFBF),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: const TextStyle(
                          color: Color(0xffBFBFBF),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xffBFBFBF),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xffBFBFBF),
                          ),
                        ),
                        hintText: 'Enter your password',
                        hintStyle: const TextStyle(
                          color: Color(0xffBFBFBF),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.visibility_off,
                            color: Color(0xffBFBFBF),
                          ),
                        ),
                      ),
                      obscureText: true,
                      style: const TextStyle(
                        color: Color(0xff0F4336),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: GestureDetector(
                      onTap:()=>Get.to(Bottom_bar()),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xff0F4336),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Center(
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 1,
                            color: const Color(0xffE5E5E5),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'Or',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xffE5E5E5),
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 1,
                            color: const Color(0xffE5E5E5),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.2),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/Icon/facebook 1.png',
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.2),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/Icon/google 1.png',
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text.rich(
                      TextSpan(
                        text: 'Don\'t have an account? ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff202020),
                          fontWeight: FontWeight.w400,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0F4336),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}