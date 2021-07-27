import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_ui/Glassmorphism/Constants/Colors.dart';
import 'package:glassmorphism_ui/Glassmorphism/Views/GMLoginPage.dart';
import 'package:glassmorphism_ui/Glassmorphism/WIdgts/CustomButton.dart';
import 'package:glassmorphism_ui/Glassmorphism/WIdgts/GlassMorphismContainer.dart';

class GMHomePage extends StatelessWidget {
  const GMHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [purpleBack, purpleDark],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                top: Get.height * 0.20,
                child: Container(
                  alignment: Alignment.center,
                  // child: Text(
                  //   // TODO:Add the kiit Logo here,
                  //   style: TextStyle(
                  //     fontSize: 40,
                  //     fontWeight: FontWeight.bold,
                  //     color: Colors.white,
                  //   ),
                  // ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: Get.height * 0.25 +10,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        purpleLightr,
                        purpleDark
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    shape: BoxShape.circle
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: -10,
                child: GlassMorphismContainer(
                  height: Get.height * 0.40,
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Welcome KIITIAN\'s',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.centerRight,
                              child: CustomButton(
                                buttonName: 'Login',
                                onPress: () {
                                    Get.to(() => GMLoginPage());
                                }

                              ),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: CustomButton(
                                  buttonName: 'Register',
                                  onPress: () {
                                    //TODO:crete the register page
                                  }

                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

