import 'package:flutter/material.dart';
import 'package:flutter_airline_app/utils/app_layout.dart';

import '../app_styles.dart';

class TicketTab extends StatelessWidget {
  final String tab1, tab2;
  const TicketTab({Key? key, required this.tab1, required this.tab2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Container(
      padding: EdgeInsets.all(3.5),
      child: FittedBox(
        child: Row(
          children: [
            Container(
              width: size.width * 0.44,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    topLeft: Radius.circular(12)),
              ),
              child: Center(
                child: Text(
                  tab1,
                  style: Styles.headlineStyle4,
                ),
              ),
            ),
            Container(
              width: size.width * 0.5,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(12),
                    topRight: Radius.circular(12)),
              ),
              child: Center(
                child: Text(
                  tab2,
                  style: Styles.headlineStyle4,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
