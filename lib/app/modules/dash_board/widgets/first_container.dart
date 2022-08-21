import 'package:flutter/material.dart';
import 'package:kiarx/app/modules/dash_board/widgets/shifttext.dart';
import 'package:kiarx/app/widgets/constants.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer({
    Key? key,
    required this.stack1Text1,
    required this.stack1Text2,
    required this.totalTrips,
    required this.totalProduction,
    required this.shift1Tripcount,
    required this.shift2Tripcount,
    required this.shift3Tripcount,
    required this.activeTrucksCount,
  }) : super(key: key);

  final String stack1Text1;
  final String stack1Text2;
  final int totalTrips;
  final double totalProduction;
  final int shift1Tripcount;
  final int shift2Tripcount;
  final int shift3Tripcount;
  final int activeTrucksCount;

  @override
  Widget build(BuildContext context) {
    return Stack(   
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Column(
            children: [
              const SizedBox(height: 10),
              SizedBox(
                height: 180,
                child: Card(
                  elevation: 6,
                  child: SizedBox(
                    // height: 200,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(height: 20),
                              const Text(
                                "Total",
                                style: TextStyle(
                                    fontSize: 20, color: Constants.primary),
                              ),
                              Text(
                                "${totalTrips.toString()} Trips",
                                style: const TextStyle(
                                  fontSize: 35,
                                  color: Constants.orange,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                "Total Production",
                                style: TextStyle(
                                    fontSize: 20, color: Constants.primary),
                              ),
                              Text(
                                "${totalProduction.toString()} Tons",
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Constants.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          // width: 150,
                          color: Constants.primary,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20),
                              ShiftText(
                                  shiftNo: "1", tripCount: shift1Tripcount.toString()),
                              ShiftText(
                                  shiftNo: "2", tripCount: shift2Tripcount.toString()),
                              ShiftText(
                                  shiftNo: "0", tripCount: shift3Tripcount.toString()),
                              Text(
                                "Active Trucks : $activeTrucksCount",
                                style: const TextStyle(
                                  color: Constants.orange,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: Container(
                      // color: Colors.pink.withOpacity(0.5),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.white.withOpacity(1),
                              Colors.pink.withOpacity(0.5),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: const [0.0, 1.2],
                            tileMode: TileMode.decal),
                      ),

                      child: Text(
                        stack1Text1,
                        style:
                            const TextStyle(fontSize: 30, color: Constants.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    stack1Text2,
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
