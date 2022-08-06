import 'package:flutter/material.dart';
import 'package:flutter_airline_app/utils/app_info_list.dart';
import 'package:flutter_airline_app/utils/app_layout.dart';
import 'package:flutter_airline_app/utils/app_styles.dart';
import 'package:flutter_airline_app/utils/widgets/rounded_circle.dart';
import 'package:gap/gap.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ticket = ticketList[0];
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            // color: Styles.primaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppLayout.getHeight(21)),
              topRight: Radius.circular(AppLayout.getHeight(21)),
            ),
          ),
          padding: EdgeInsets.all(AppLayout.getHeight(21)),
          child: Column(
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style:
                            Styles.headlineStyle3.copyWith(color: Colors.black),
                      ),
                      Expanded(child: Container()),
                      RoundedCircle(),
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
                                                  color: Colors.black),
                                            ),
                                          )),
                                );
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ]),
                      ),
                      const RoundedCircle(),
                      const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style:
                            Styles.headlineStyle3.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(3)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ticket['from']['name'],
                    style: Styles.headlineStyle3,
                  ),
                  Text(ticket['flying_time'],
                      style:
                          Styles.headlineStyle3.copyWith(color: Colors.black)),
                  Text(ticket['to']['name'], style: Styles.headlineStyle3)
                ],
              ),
            ],
          ),
        ),
        Gap(AppLayout.getHeight(30)),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: AppLayout.getWidth(20),
              height: AppLayout.getHeight(20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius:
                      BorderRadius.circular(AppLayout.getHeight(10)),
                ),
              ),
            ),
            Expanded(child: LayoutBuilder(
              builder: (context, constraints) {
                return Flex(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  direction: Axis.horizontal,
                  children: List.generate(
                      (constraints.maxWidth / 6).floor(),
                      (index) => SizedBox(
                            width: AppLayout.getWidth(3),
                            height: 1,
                            child: Container(
                              decoration: BoxDecoration(color: Colors.grey),
                            ),
                          )),
                );
              },
            )),
            SizedBox(
              width: AppLayout.getWidth(20),
              height: AppLayout.getHeight(20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            // color: Styles.orangeColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(AppLayout.getHeight(21)),
              bottomRight: Radius.circular(AppLayout.getHeight(21)),
            ),
          ),
          // padding: const EdgeInsets.all(21),
          child: Column(
            children: [
              Gap(AppLayout.getHeight(4)),
              Gap(AppLayout.getHeight(5)),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          ticket['date'],
                          style: Styles.headlineStyle2
                              .copyWith(color: Colors.grey.shade700),
                        ),
                        Text(
                          "Date",
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(ticket['departure_time'],
                            style: Styles.headlineStyle2
                                .copyWith(color: Colors.grey.shade700)),
                        Text("Deptarture Time", style: Styles.headlineStyle3),
                      ],
                    ),
                    Column(
                      children: [
                        Text(ticket['number'].toString(),
                            style: Styles.headlineStyle2
                                .copyWith(color: Colors.grey.shade600)),
                        Text("Number", style: Styles.headlineStyle3)
                      ],
                    )
                  ],
                ),
              ),
              Gap(AppLayout.getHeight(20))
            ],
          ),
        )
        //this marks the end of blue part of ticket card and beginning of orange part of ticket card//==============,
      ],
    );
  }
}
