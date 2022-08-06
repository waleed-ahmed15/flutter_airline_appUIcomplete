import 'package:flutter/material.dart';

class ApplayoutBuilder extends StatelessWidget {
  final bool? iscolor;
  final int sections;
  const ApplayoutBuilder({Key? key, this.iscolor, required this.sections})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
              (constraints.maxWidth / sections).floor(),
              (index) => SizedBox(
                    width: 3,
                    height: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          color: iscolor == null
                              ? Colors.white
                              : Colors.grey.shade500),
                    ),
                  )),
        );
      },
    );
  }
}
