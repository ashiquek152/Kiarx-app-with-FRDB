import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kiarx/app/widgets/loading.dart';
import 'package:kiarx/app/widgets/text_customized.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  // void increment() => count.value++;
  bool isError = false;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  Future signInEmailandPassword() async {
    Get.dialog(const LoadingWidget(), barrierDismissible: false,transitionDuration: const Duration(seconds: 2));
    try {
      final result = await _auth.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passController.text.trim());
      log(result.user.toString());
      Get.back();
      emailController.clear();
      passController.clear();
      return;
    } on FirebaseAuthException catch (e) {
      isError = true;
      final erroMessage = e.message;
      log(erroMessage.toString());
      Get.back();
      Get.snackbar("", "",
      isDismissible: true,
      duration: const Duration(seconds: 1),
          backgroundColor: Colors.orange,
          messageText: TextCustomized(
            textAlign: TextAlign.left,
            fontSize: 16,
            textColor: Colors.black45,
            text: erroMessage.toString(),
          ),
          titleText: const TextCustomized(
            textAlign: TextAlign.left,
            fontSize: 16,
            text: "Login failed",
            fontWeight: FontWeight.bold,
            textColor: Colors.white,
          ));
    }
    isError==true ? null : Get.back();
    isError=false;
    update();

  }

  validateEmail(value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    } else {
      bool emailValid = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(value);
      if (!emailValid) {
        return "Enter a valid email address";
      }
    }
    return null;
    
  }

  validatePassword(value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    } else if (value.length < 6) {
      return "Min 6 characters";
    } else {
      return null;
    }
  }
}
