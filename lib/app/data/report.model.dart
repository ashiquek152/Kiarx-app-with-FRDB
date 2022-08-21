// To parse this JSON data, do
//
//     final reportModel = reportModelFromJson(jsonString);

import 'dart:convert';

ReportModel reportModelFromJson(String str) =>
    ReportModel.fromJson(json.decode(str));

String reportModelToJson(ReportModel data) => json.encode(data.toJson());

class ReportModel {
  ReportModel(
      {required this.activeTripcount,
      required this.shift2Tripcount,
      required this.totalProduction,
      required this.shift1Tripcount,
      required this.shift3Tripcount,
      required this.expectedProduction,
      required this.reportType});

  int activeTripcount;
  int shift2Tripcount;
  double totalProduction;
  int shift1Tripcount;
  int shift3Tripcount;
  double expectedProduction;
  String reportType;

  factory ReportModel.fromJson(Map<String, dynamic> json) => ReportModel(
        reportType: json["reportType"],
        activeTripcount: json["activeTripcount"],
        shift2Tripcount: json["shift2Tripcount"],
        totalProduction: json["totalProduction"].toDouble(),
        shift1Tripcount: json["shift1Tripcount"],
        shift3Tripcount: json["shift3Tripcount"],
        expectedProduction: json["expectedProduction"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "reportType": reportType,
        "activeTripcount": activeTripcount,
        "shift2Tripcount": shift2Tripcount,
        "totalProduction": totalProduction,
        "shift1Tripcount": shift1Tripcount,
        "shift3Tripcount": shift3Tripcount,
        "expectedProduction": expectedProduction,
      };
}
