import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_ui/Glassmorphism/Constants/Colors.dart';
import 'package:glassmorphism_ui/Glassmorphism/WIdgts/CustomButton.dart';
import 'package:glassmorphism_ui/Glassmorphism/WIdgts/CustomSphere.dart';
import 'package:glassmorphism_ui/Glassmorphism/WIdgts/CustomTextField.dart';
import 'package:glassmorphism_ui/Glassmorphism/WIdgts/GlassMorphismContainer.dart';

class GMLoginPage extends StatelessWidget {
  const GMLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              purpleBack,
              blueBack,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: Stack(
            children: [
              Positioned(
                left: -40,
                top: Get.height * 0.1,
                child: CustomSphere(
                  height : 200,
                  width : 200,
                ),
              ),
              Positioned(
                right: -40,
                bottom: Get.height * 0.075,
                child: CustomSphere(
                  height : 225,
                  width : 225,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GlassMorphismContainer(
                      height: Get.height * 0.65,
                      width: Get.width * 0.8,
                      child: Column(
                        children: [
                          Spacer(),
                          Text(
                            'Sign In',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          CustomTextField(
                            hintText: 'Email',
                            prefixIcon: Icons.email,

                          ),
                          CustomTextField(
                            hintText: 'Password',
                            prefixIcon: Icons.password,
                            isObscure: true,

                          ),
                          SizedBox(height: 10.0,),
                          CustomButton(buttonName: 'Sign In', onPress: (){
                                  //TODO:Addiing the on press function here to navigate .jo mere se nhi ho paya hi to hm custombuttom me hi navigation kiye hue hi usko theek kro
                          }),
                          Spacer(),

                        ],
                      ),
                  ),
                  GlassMorphismContainer( height: 50.0, width: Get.width * 0.8 ,
                    borderRadius: 10.0,
                    child: Center(
                      //TODO:add the on press here to go to register page
                      child: Text('Dont have an account . Click Here',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),),

                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
