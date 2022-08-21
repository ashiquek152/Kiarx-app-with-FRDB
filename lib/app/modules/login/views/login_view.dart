import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kiarx/app/modules/login/widgets/stack_orange_container.dart';
import 'package:kiarx/app/widgets/constants.dart';
import 'package:kiarx/app/widgets/text_customized.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);

  final _loginCtrlr = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          const StackOrangeChild(),
          Column(
            children: [
              const SizedBox(height: 100),
              Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.only(top: 50),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Form(
                  key: _loginCtrlr.formKey,
                  child: Column(
                    children: [
                      const SizedBox(height: 50),
                      Center(
                        child: Container(
                            height: 100, width: 100, color: Constants.orange),
                      ),
                      TextFormField(
                        controller: _loginCtrlr.emailController,
                        decoration:
                            Constants.inputDecoration(hintText: "Email"),
                        validator: (value) => _loginCtrlr.validateEmail(value),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                      TextFormField(
                        obscureText: true,
                        controller: _loginCtrlr.passController,
                        decoration:
                            Constants.inputDecoration(hintText: "Password"),
                        validator: (value) =>
                            _loginCtrlr.validatePassword(value),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.black),
                        onPressed: () {
                          if (_loginCtrlr.formKey.currentState!.validate()) {
                            _loginCtrlr.signInEmailandPassword();
                          }
                        },
                        child:
                            const TextCustomized(fontSize: 20, text: "LOGIN"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
