
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kiarx/app/data/report.model.dart';
import 'package:kiarx/app/modules/dash_board/widgets/first_container.dart';
import 'package:kiarx/app/modules/dash_board/widgets/second_container.dart';
import 'package:kiarx/app/widgets/constants.dart';

import '../controllers/dash_board_controller.dart';

class DashBoardView extends GetView<DashBoardController> {
  DashBoardView({Key? key}) : super(key: key);

  final dashBoardController = Get.put(DashBoardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: double.infinity,
      child: FirebaseAnimatedList(
        defaultChild: const Center(
          child: CircularProgressIndicator(
            color: Constants.orange,
            strokeWidth: 3,
            semanticsLabel: "Loading Report...",
          ),
        ),
        query: dashBoardController.dbRef,
        itemBuilder: (BuildContext context, DataSnapshot snapshot,
            Animation<double> animation, int index) {
          ReportModel reportModel = ReportModel(
            reportType: snapshot.child("reportType").value.toString(),
            activeTripcount:
                int.parse(snapshot.child("activeTripcount").value.toString()),
            shift2Tripcount:
                int.parse(snapshot.child("shift2Tripcount").value.toString()),
            totalProduction: double.parse(
                snapshot.child("totalProduction").value.toString()),
            shift1Tripcount:
                int.parse(snapshot.child("shift1Tripcount").value.toString()),
            shift3Tripcount:
                int.parse(snapshot.child("shift3Tripcount").value.toString()),
            expectedProduction: double.parse(
                snapshot.child("expectedProduction").value.toString()),
          );

          int TOTALTRIPS = reportModel.activeTripcount +
              reportModel.shift1Tripcount +
              reportModel.shift2Tripcount +
              reportModel.shift3Tripcount;

          double REQRATE = ((reportModel.expectedProduction / 24) / 10).toPrecision(2);

          double PERCENTAGE = reportModel.reportType == "COAL REPORT"
              ? ((reportModel.totalProduction /
                          reportModel.expectedProduction) *
                      100)
                  .toPrecision(2)
              : (((reportModel.totalProduction /
                              reportModel.expectedProduction) *
                          100)/10 )
                  .toPrecision(2);

          double CURRENTRATE =
              ((reportModel.totalProduction / 24) / 10).toPrecision(2);
          // log(CURRENTRATE.toString());


          Color PROGRESSCOLOR = PERCENTAGE > 40 ? Colors.green : Colors.red;
          String PROGRESSTEXT = PERCENTAGE > 40 ? "GOOD" : "POOR";
          // log(reportModel.reportType.toString());

          return SingleChildScrollView(
            child: Column(
              children: [
                FirstContainer(
                  stack1Text1: "LIVE",
                  stack1Text2: reportModel.reportType,
                  totalTrips: TOTALTRIPS,
                  totalProduction: reportModel.totalProduction,
                  shift1Tripcount: reportModel.shift1Tripcount,
                  shift2Tripcount: reportModel.shift2Tripcount,
                  shift3Tripcount: reportModel.shift3Tripcount,
                  activeTrucksCount: reportModel.activeTripcount,
                ),
                SecondContainer(
                  percentIndicatorColor: PROGRESSCOLOR,
                  percent: PERCENTAGE,
                  requiredRate: REQRATE,
                  currentRate: CURRENTRATE,
                  expectedProd: reportModel.expectedProduction,
                  performanceCardText: PROGRESSTEXT,
                  performanceCardColor: PROGRESSCOLOR,
                )
              ],
            ),
          );
        },
      ),
    ));
  }
}
