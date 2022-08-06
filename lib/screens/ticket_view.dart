import 'package:flutter/material.dart';
import 'package:flutter_airline_app/utils/app_layout.dart';
import 'package:flutter_airline_app/utils/app_styles.dart';
import 'package:flutter_airline_app/utils/widgets/app_layout_builder.dart';
import 'package:flutter_airline_app/utils/widgets/rounded_circle.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? iscolor;
  const TicketView({Key? key, required this.ticket, this.iscolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    print('object');
    // print(AppLayout.getHeight(500));
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(195),
      child: Container(
        margin:
            EdgeInsets.only(left: iscolor == null ? AppLayout.getWidth(21) : 0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: iscolor == null ? Styles.primaryColor : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21)),
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(21)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: iscolor == null
                            ? Styles.headlineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headlineStyle3
                                .copyWith(color: Colors.grey.shade700),
                      ),
                      Expanded(child: Container()),
                      RoundedCircle(
                        iscolor: true,
                      ),
                      Expanded(
                        child: Stack(children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                print(
                                    "width of screen is ${constraints.maxWidth}");
                                return Flex(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  direction: Axis.horizontal,
                                  children: List.generate(
                                      (constraints.maxWidth / 7).floor(),
                                      (index) => SizedBox(
                                            width: AppLayout.getWidth(3),
                                            height: 1,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: iscolor == null
                                                      ? Colors.white
                                                      : Colors.blue),
                                            ),
                                          )),
                                );
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: iscolor == null
                                    ? Colors.white
                                    : Colors.blue,
                              ),
                            ),
                          ),
                        ]),
                      ),
                      const RoundedCircle(
                        iscolor: true,
                      ),
                      const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style: Styles.headlineStyle3.copyWith(
                            color: iscolor == null
                                ? Colors.white
                                : Colors.grey.shade700),
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ticket['from']['name'],
                        style: Styles.headlineStyle3.copyWith(
                          color: iscolor == null ? Colors.white : Colors.grey,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: Styles.headlineStyle3.copyWith(
                          color: iscolor == null
                              ? Colors.white
                              : Colors.grey.shade700,
                        ),
                      ),
                      Text(
                        ticket['to']['name'],
                        style: Styles.headlineStyle3.copyWith(
                          color: iscolor == null ? Colors.white : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: iscolor == null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: iscolor == null
                      ? Radius.circular(21)
                      : Radius.circular(0),
                  bottomRight: iscolor == null
                      ? Radius.circular(21)
                      : Radius.circular(0),
                ),
              ),
              // padding: const EdgeInsets.all(21),
              child: Column(
                children: [
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: ApplayoutBuilder(
                        sections: 6,
                        iscolor: iscolor,
                      )),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              ticket['date'],
                              style: Styles.headlineStyle2.copyWith(
                                color: iscolor == null
                                    ? Colors.white
                                    : Colors.grey.shade500,
                              ),
                            ),
                            Text("Date",
                                style: Styles.headlineStyle3.copyWith(
                                  color: iscolor == null
                                      ? Colors.white
                                      : Colors.grey.shade500,
                                )),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              ticket['departure_time'],
                              style: Styles.headlineStyle2.copyWith(
                                color: iscolor == null
                                    ? Colors.white
                                    : Colors.grey,
                              ),
                            ),
                            Text(
                              "Deptarture Time",
                              style: Styles.headlineStyle3.copyWith(
                                color: iscolor == null
                                    ? Colors.white
                                    : Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              ticket['number'].toString(),
                              style: Styles.headlineStyle2.copyWith(
                                color: iscolor == null
                                    ? Colors.white
                                    : Colors.grey.shade500,
                              ),
                            ),
                            Text(
                              "Number",
                              style: Styles.headlineStyle3.copyWith(
                                color: iscolor == null
                                    ? Colors.white
                                    : Colors.grey,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Gap(20),
                ],
              ),
            )
            //this marks the end of blue part of ticket card and beginning of orange part of ticket card//==============,
          ],
        ),
      ),
    );
  }
}
