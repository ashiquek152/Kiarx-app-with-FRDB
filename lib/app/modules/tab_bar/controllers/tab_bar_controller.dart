import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:kiarx/app/data/report.model.dart';

class TabBarController extends GetxController {
   DatabaseReference databaseReference=FirebaseDatabase.instance.ref();


  createDB() async {
    ReportModel reportModel = ReportModel(
      reportType: "COAL REPORT",
      shift1Tripcount: 21,
      shift2Tripcount: 14,
      shift3Tripcount: 0,
      activeTripcount: 0,
      totalProduction: 875.0,
      expectedProduction: 1980.5,
    );
    ReportModel reportModel2 = ReportModel(
      reportType: "OB REPORT",
      shift1Tripcount: 1,
      shift2Tripcount: 15,
      shift3Tripcount: 0,
      activeTripcount: 0,
      totalProduction: 561.6,
      expectedProduction: 248.0,
    );
    await databaseReference.child("Report").child("COAL REPORT").set({
      "reportType":reportModel.reportType,
      "shift1Tripcount": reportModel.shift1Tripcount,
      "shift2Tripcount": reportModel.shift2Tripcount,
      "shift3Tripcount": reportModel.shift3Tripcount,
      "activeTripcount": reportModel.activeTripcount,
      "totalProduction": reportModel.totalProduction,
      "expectedProduction": reportModel.expectedProduction,
    });
    await databaseReference.child("Report").child("OB REPORT").set({
      "reportType":reportModel2.reportType,
      "shift1Tripcount": reportModel2.shift1Tripcount,
      "shift2Tripcount": reportModel2.shift2Tripcount,
      "shift3Tripcount": reportModel2.shift3Tripcount,
      "activeTripcount": reportModel2.activeTripcount,
      "totalProduction": reportModel2.totalProduction,
      "expectedProduction": reportModel2.expectedProduction,
    });
    print("API worked");
  }

  Future<ReportModel> getFromDB( String reportType) async {
    ReportModel? reportModel;
    await databaseReference.child(reportType).get().then(
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

        // print(reportModel!.expectedProduction);
        print(value.child("activeTripcount").value);
      },
    );
    return reportModel!;
  }
}
