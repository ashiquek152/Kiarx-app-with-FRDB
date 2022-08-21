
import 'package:flutter/material.dart';

class ShiftText extends StatelessWidget {
  const ShiftText({
    Key? key,
    required this.shiftNo,
    required this.tripCount,
  }) : super(key: key);

  final String shiftNo;
  final String tripCount;

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(text: "Shift$shiftNo : ", style: const TextStyle(fontSize: 22)),
      TextSpan(
          text: "$tripCount Trips",
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
    ]));
  }
}
