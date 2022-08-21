import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/analysis_controller.dart';

class AnalysisView extends GetView<AnalysisController> {
  const AnalysisView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: Container(
          height: 250,color: Colors.yellow,
        child: const Center(child: Text("ANALYSIS VIEW")),
          
          ),
      ),
    );
  }
}
