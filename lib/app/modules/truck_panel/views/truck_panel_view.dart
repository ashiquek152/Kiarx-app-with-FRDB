
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/truck_panel_controller.dart';

class TruckPanelView extends GetView<TruckPanelController> {
  const TruckPanelView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container();
    // Scaffold(
    //   body: ListView(
    //     children: [
    //       FutureBuilder<ReportModel>(
    //           // future: tabCtrlr.getFromDB("CoalReport"),
    //           builder: (context, snapshot) {
    //             if (snapshot.hasError) {
    //               return const Center(child: Text("Something went wrong"));
    //             } else if (snapshot.hasData) {
    //               final data = snapshot.data;
    //               return Column(
    //                 children: [
    //                   const SizedBox(height: 10),
    //                   FirstContainer(
    //                     stack1Text1: "LIVE",
    //                     stack1Text2: "COAL REPORT",
    //                     totalTrips: data!.activeTripcount +
    //                         data.shift1Tripcount +
    //                         data.shift2Tripcount +
    //                         data.shift3Tripcount,
    //                     totalProduction: data.totalProduction,
    //                     shift1Tripcount: data.shift1Tripcount,
    //                     shift2Tripcount: data.shift2Tripcount,
    //                     shift3Tripcount: data.shift3Tripcount,
    //                     activeTrucksCount: data.activeTripcount,
    //                   ),
    //                   SecondContainer(
    //                     percentIndicatorColor: Colors.green,
    //                     percent: 20,
    //                     requiredRate:
    //                         (data.expectedProduction / 24).roundToDouble(),
    //                     currentRate:
    //                         (data.totalProduction / 24).roundToDouble(),
    //                     expectedProd: data.expectedProduction,
    //                     performanceCardText: "GOOD",
    //                     performanceCardColor: Colors.green,
    //                   ),
    //                   const SizedBox(height: 10),
    //                 ],
    //               );
    //             }
    //             return Container();
    //           }),
    //       FutureBuilder<ReportModel>(
    //         // future: tabCtrlr.getFromDB("ObReport"),
    //         builder: (context, snapshot) {
    //           if (snapshot.hasError) {
    //             return const Center(child: Text("Something went wrong"));
    //           } else if (snapshot.hasData) {
    //             final data = snapshot.data;
    //             return Column(
    //               children: [
    //                 FirstContainer(
    //                   stack1Text1: "LIVE",
    //                   stack1Text2: "OB REPORT",
    //                   totalTrips: data!.activeTripcount +
    //                       data.shift1Tripcount +
    //                       data.shift2Tripcount +
    //                       data.shift3Tripcount,
    //                   totalProduction: data.totalProduction,
    //                   shift1Tripcount: data.shift1Tripcount,
    //                   shift2Tripcount: data.shift2Tripcount,
    //                   shift3Tripcount: data.shift3Tripcount,
    //                   activeTrucksCount: data.activeTripcount,
    //                 ),
    //                 SecondContainer(
    //                     percentIndicatorColor: Colors.red,
    //                     percent: 20,
    //                     requiredRate:
    //                         (data.expectedProduction / 24).roundToDouble(),
    //                     currentRate:
    //                         (data.totalProduction / 24).roundToDouble(),
    //                     expectedProd: data.expectedProduction,
    //                     performanceCardText: "GOOD",
    //                     performanceCardColor: Colors.red),
    //               ],
    //             );
    //           }
    //           return Container();
    //         },
    //       ),
    //     ],
    //   ),
    // );
  }
}
