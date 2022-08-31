import 'package:flutter/material.dart';

class TiteType extends StatelessWidget {
  final String titleType;
  final bool isselected;
  final VoidCallback onTap;

  TiteType({
    required this.titleType,
    required this.isselected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 27.0),
        child: Text(
          titleType,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: isselected ? Colors.blue[900] : Colors.grey,
          ),
        ),
      ),
    );
  }
}
