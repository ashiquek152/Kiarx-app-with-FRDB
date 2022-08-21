import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/excavator_panel_controller.dart';

class ExcavatorPanelView extends GetView<ExcavatorPanelController> {
  const ExcavatorPanelView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body:Container(height: 250,color: Colors.green,
      child: const Center(child: Text("EXCAVATION PANEL VIEW")),
      
      )
    );
  }
}
