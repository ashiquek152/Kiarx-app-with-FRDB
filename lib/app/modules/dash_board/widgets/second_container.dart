import 'package:flutter/material.dart';
import 'package:kiarx/app/modules/dash_board/widgets/second_container_widgets.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({
    Key? key,
    required this.percentIndicatorColor,
    required this.percent,
    required this.requiredRate,
    required this.currentRate,
    required this.expectedProd,
    required this.performanceCardText,
    required this.performanceCardColor,
  }) : super(key: key);

  final Color percentIndicatorColor;
  final double percent;
  final double requiredRate;
  final double currentRate;
  final double expectedProd;
  final String performanceCardText;
  final Color performanceCardColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        elevation: 6,
        //  color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularPercentIndicator(
              radius: 45.0,
              lineWidth: 20.0,
              animation: true,
              percent: percent/100,
              // animateFromLastPercent: true,
              center: Text(
                "${percent.toString()} %",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
              circularStrokeCap: CircularStrokeCap.square,
              progressColor: percentIndicatorColor,
            ),
            SecondContainerWidgets(
              title: "Req. Rate",
              cardText: "$requiredRate T/Hr",
              cardText2: "$currentRate T/Hr",
              title2: "Current Rate",
            ),
            SecondContainerWidgets(
              title: "Expected Prod",
              cardText: "$expectedProd",
              cardText2: performanceCardText,
              title2: "Performance",
              cardColor: performanceCardColor,
              cardTextColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
