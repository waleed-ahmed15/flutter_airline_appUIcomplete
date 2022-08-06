import 'package:flutter/material.dart';

class RoundedCircle extends StatelessWidget {
  final bool? iscolor;
  const RoundedCircle({Key? key, this.iscolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: iscolor == null ? Colors.white : Colors.blue, width: 2.5)),
    );
  }
}
