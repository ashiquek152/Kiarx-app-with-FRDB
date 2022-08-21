import 'dart:developer';

import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:kiarx/app/data/report.model.dart';

class DashBoardController extends GetxController {
 Query dbRef = FirebaseDatabase.instance.ref().child('Report');
  DatabaseReference reference = FirebaseDatabase.instance.ref().child('Report');

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
  ReportModel? reportModel;
  getFromDB(String reportType) {
    DatabaseReference databaseReference = FirebaseDatabase.instance.ref();
    log("Working");

    databaseReference.child(reportType).get().then(
      (value) {
        reportModel = ReportModel(
          reportType: value.child("reportType").value.toString(),
          activeTripcount:
              int.parse(value.child("activeTripcount").value.toString()),
          shift2Tripcount:
              int.parse(value.child("shift2Tripcount").value.toString()),
          totalProduction:
              double.parse(value.child("totalProduction").value.toString()),
          shift1Tripcount:
              int.parse(value.child("shift1Tripcount").value.toString()),
          shift3Tripcount:
              int.parse(value.child("shift3Tripcount").value.toString()),
          expectedProduction:
              double.parse(value.child("expectedProduction").value.toString()),
        );
        print(value.child("shift2Tripcount").value);
      },
    );
    return ;
  }
  
}
