import 'package:flutter/material.dart';

class SecondContainerWidgets extends StatelessWidget {
  const SecondContainerWidgets({
    Key? key,
    required this.title,
    required this.cardText,
    this.cardColor = Colors.white,
    required this.title2,
    required this.cardText2,
    this.cardTextColor = Colors.black,
  }) : super(key: key);
  final String title;
  final String title2;

  final String cardText;
  final String cardText2;
  final Color cardTextColor;

  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              title,
              style: const TextStyle(color: Colors.black),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: Text(
                  cardText,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              title2,
              style: const TextStyle(color: Colors.black),
            ),
            Card(
              color: cardColor,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                child: Text(
                  cardText2,
                  style: TextStyle(
                    color: cardTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
