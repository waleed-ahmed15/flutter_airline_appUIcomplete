import 'package:flutter/material.dart';
import 'package:flutter_airline_app/utils/app_layout.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment algn;
  final String text1, text2;
  final bool? tex1Color;
  const AppColumnLayout(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.algn,
      this.tex1Color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: algn,
      children: [
        Text(
          text1,
          style: tex1Color == null
              ? Styles.headlineStyle3
              : Styles.headlineStyle3.copyWith(
                  color: Colors.grey.shade700, fontWeight: FontWeight.bold),
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          text2,
          style: Styles.headlineStyle4,
        ),
      ],
    );
  }
}
