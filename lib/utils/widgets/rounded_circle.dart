import 'package:flutter/material.dart';

class RoundedCircle extends StatelessWidget {
  const RoundedCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white, width: 2.5)),
    );
  }
}
