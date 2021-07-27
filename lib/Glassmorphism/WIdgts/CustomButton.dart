import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_ui/Glassmorphism/Views/GMLoginPage.dart';

class CustomButton extends StatelessWidget {

  final String buttonName;
  final Function onPress;
  const CustomButton({
    Key? key, required this.buttonName, required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(() => GMLoginPage());
        print(this.onPress);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: 8.0, horizontal: 20.0),
        decoration: BoxDecoration(
            border:
            Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            )),
        child: Text(
          this.buttonName,
          style: TextStyle(
              color: Colors.white, fontSize: 20.0),
        ),
      ),
    );
  }
}
