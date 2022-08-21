import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kiarx/app/modules/analysis/views/analysis_view.dart';
import 'package:kiarx/app/modules/dash_board/views/dash_board_view.dart';
import 'package:kiarx/app/modules/excavator_panel/views/excavator_panel_view.dart';
import 'package:kiarx/app/modules/truck_panel/views/truck_panel_view.dart';
import 'package:kiarx/app/widgets/constants.dart';
import 'package:kiarx/app/widgets/text_customized.dart';

import '../controllers/tab_bar_controller.dart';

class TabBarViewScreen extends GetView<TabBarController> {
  TabBarViewScreen({Key? key}) : super(key: key);

  final _auth = FirebaseAuth.instance;

  final tabCtrlr = Get.put(TabBarController());
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Constants.primary,
          title: const TextCustomized(
            fontSize: 20,
            text: "KiarX",
            fontWeight: FontWeight.bold,
          ),
          actions: [
            IconButton(
                onPressed: () {
                  // tabCtrlr.createDB();
                  _auth.signOut();
                },
                tooltip: "Sign out",
                icon: const Icon(
                  Icons.location_on_outlined,
                  size: 35,
                ))
          ],
          bottom: const TabBar(
            labelColor: Constants.orange,
            unselectedLabelColor: Constants.white,
            unselectedLabelStyle: TextStyle(
              fontFamily: "Ubuntu",
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
            labelStyle: TextStyle(
              fontFamily: "Ubuntu",
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            labelPadding: EdgeInsets.symmetric(horizontal: 10),
            indicatorColor: Constants.orange,
            tabs: [
              Tab(text: "DASHBOARD"),
              Tab(text: "TRUCK\nPANEL"),
              Tab(text: "EXCAVATOR\nPANEL"),
              Tab(text: "ANALYSIS"),
            ],
          ),
        ),
        drawer: const Drawer(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: TabBarView(
            children: [
              DashBoardView(),
              const TruckPanelView(),
              const ExcavatorPanelView(),
              const AnalysisView()
            ],
          ),
        ),

        // NestedScrollView(
        //   headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {

        //     return <Widget>[
        //       SliverAppBar(
        //         backgroundColor: Constants.primary,
        //         title: const TextCustomized(
        //           fontSize: 20,
        //           text: "KiarX",
        //           fontWeight: FontWeight.bold,
        //         ),
        //         actions: [
        //           IconButton(
        //               onPressed: () {},
        //               icon: const Icon(
        //                 Icons.location_on_outlined,
        //                 size: 35,
        //               ))
        //         ],
        //         pinned: true,
        //         floating: false,
        //         bottom: const TabBar(
        //           labelColor: Constants.orange,
        //           unselectedLabelColor: Constants.white,
        //           unselectedLabelStyle: TextStyle(
        //             fontFamily: "Ubuntu",
        //             fontSize: 11,
        //             fontWeight: FontWeight.bold,
        //           ),
        //           labelStyle: TextStyle(
        //             fontFamily: "Ubuntu",
        //             fontSize: 12,
        //             fontWeight: FontWeight.bold,
        //           ),
        //           labelPadding: EdgeInsets.symmetric(horizontal: 10),
        //           indicatorColor: Constants.orange,
        //           tabs: [
        //             Tab(text: "DASHBOARD"),
        //             Tab(text: "TRUCK\nPANEL"),
        //             Tab(text: "EXCAVATOR\nPANEL"),
        //             Tab(text: "ANALYSIS"),
        //           ],
        //         ),
        //       ),
        //     ];
        //   },
        //   body: const Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 8),
        //     child: TabBarView(
        //       children: [
        //         DashBoardView(),
        //         TruckPanelView(),
        //         ExcavatorPanelView(),
        //         AnalysisView()
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
