import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_airline_app/utils/app_styles.dart';
import 'package:flutter_airline_app/utils/widgets/ticket_tab.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(
              AppLayout.getHeight(40),
            ),
            Text(
              "what are\nyou looking for?",
              style: Styles.headlineStyle1.copyWith(
                fontSize: AppLayout.getWidth(35),
              ),
              textAlign: TextAlign.left,
            ),
            Gap(
              AppLayout.getHeight(20),
            ),
            TicketTab(tab1: 'Airline Tickets', tab2: 'Hotels'),
            Gap(
              AppLayout.getHeight(20),
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(20),
                ),
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(
                  Icons.flight_takeoff_rounded,
                  color: Colors.grey.shade400,
                ),
                prefixIconColor: Colors.black,
                hintText: "Departure",
                hintStyle:
                    Styles.headlineStyle3.copyWith(color: Colors.grey.shade700),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Gap(
              AppLayout.getHeight(20),
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(20),
                ),
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(
                  Icons.flight_land_rounded,
                  color: Colors.grey.shade400,
                ),
                prefixIconColor: Colors.black,
                hintText: "Arrival",
                hintStyle:
                    Styles.headlineStyle3.copyWith(color: Colors.grey.shade700),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            InkWell(
              onTap: () => print("finding tickets was tapped"),
              child: Container(
                padding:
                    EdgeInsets.symmetric(vertical: AppLayout.getHeight(15)),
                width: size.width,
                child: Center(
                    child: Text(
                  "find Tickets",
                  style: Styles.headlineStyle3.copyWith(color: Colors.white),
                )),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    color: const Color(0xd91130ce)),
              ),
            ),
            Gap(AppLayout.getHeight(40)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Upcoming Flights",
                  style: Styles.headlineStyle2,
                ),
                InkWell(
                  onTap: () {
                    print("view all was tapped");
                  },
                  child: Text(
                    "View all",
                    style:
                        Styles.textStyle.copyWith(color: Styles.primaryColor),
                  ),
                )
              ],
            ),
            Gap(AppLayout.getHeight(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: AppLayout.getHeight(445),
                  width: size.width * 0.45,
                  padding: EdgeInsets.all(AppLayout.getHeight(18)),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(16)),
                      color: Colors.white),

                  // height: AppLayout.getHeight(400),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(16)),
                        child: Image.asset(
                          'assets/images/sit.jpg',
                          height: AppLayout.getHeight(170),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Gap(AppLayout.getHeight(5)),
                      Text(
                        "20% discount\non business\nclass\nticketsfrom\nairline on\nInternational",
                        style: Styles.headlineStyle1
                            .copyWith(color: Colors.grey.shade500),
                        textAlign: TextAlign.left,
                      ),
                      Gap(AppLayout.getHeight(15))
                    ],
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(AppLayout.getHeight(20)),
                              width: size.width * 0.41,
                              height: AppLayout.getHeight(190),
                              decoration: BoxDecoration(
                                color: Color(0xff3ab8b8),
                                borderRadius: BorderRadius.circular(
                                    AppLayout.getHeight(18)),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Discount\nfor Survey",
                                    style: Styles.headlineStyle2
                                        .copyWith(color: Colors.white),
                                  ),
                                  Gap(AppLayout.getHeight(15)),
                                  Text(
                                    'take a survey about our services and\nget a discount',
                                    style: Styles.headlineStyle3
                                        .copyWith(color: Colors.white70),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(30)),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                                // borderRadius:
                                // BorderRadius.circular(AppLayout.getHeight(30)),
                                border: Border.all(
                                    width: AppLayout.getWidth(18),
                                    color: Color(0xff189999))),
                          ),
                        )
                      ],
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Column(
                      children: [
                        Container(
                          width: size.width * 0.41,
                          padding: EdgeInsets.all(AppLayout.getHeight(20)),
                          height: AppLayout.getHeight(240),
                          decoration: BoxDecoration(
                            color: Color(0xffec6545),
                            borderRadius: BorderRadius.circular(
                              AppLayout.getHeight(20),
                            ),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Take Love',
                                style: Styles.headlineStyle2.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Gap(AppLayout.getHeight(5)),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "😍",
                                    style: Styles.textStyle.copyWith(
                                        fontSize: AppLayout.getHeight(25))),
                                TextSpan(
                                    text: "🥰",
                                    style: Styles.textStyle.copyWith(
                                        fontSize: AppLayout.getHeight(50))),
                                TextSpan(
                                    text: "😘",
                                    style: Styles.textStyle.copyWith(
                                        fontSize: AppLayout.getHeight(25)))
                              ])),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            )
          ]),
    );
  }
}
