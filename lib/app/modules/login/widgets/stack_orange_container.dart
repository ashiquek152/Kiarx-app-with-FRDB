
import 'package:flutter/material.dart';
import 'package:kiarx/app/widgets/text_customized.dart';

class StackOrangeChild extends StatelessWidget {
  const StackOrangeChild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 400,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Colors.orange.shade600,
              Colors.orange.shade900,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.0, 0.3],
            tileMode: TileMode.decal),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 50),
            TextCustomized(fontSize: 40, text: "Welcome"),
            TextCustomized(fontSize: 22, text: "Login to continue"),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}

