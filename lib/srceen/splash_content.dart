import 'package:flutter/material.dart';

class SlpashContent extends StatelessWidget {
  final String Title;
  final String Content;

  SlpashContent({
    super.key,
    required this.Content,
    required this.Title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              Title,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              Content,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
