import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kiarx/app/modules/login/views/login_view.dart';
import 'package:kiarx/app/modules/tab_bar/views/tab_bar_view.dart';

import '../controllers/auhtentication_controller.dart';

class AuhtenticationView extends GetView<AuhtenticationController> {
  AuhtenticationView({Key? key}) : super(key: key);
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: _firebaseAuth.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text("Something went wrong"));
          } else if (snapshot.hasData) {
            return TabBarViewScreen();
          } else {
            return LoginView();
          }
        },
      ),
    );
  }
}
