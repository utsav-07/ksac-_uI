import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Glassmorphism/Views/GMHomePage.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "ui",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: GMHomePage(),
    ),
  );
}

