import 'package:flutter/material.dart';
import 'package:flutter_airline_app/screens/columnLayout.dart';
import 'package:flutter_airline_app/screens/ticket_view.dart';
import 'package:flutter_airline_app/utils/app_info_list.dart';
import 'package:flutter_airline_app/utils/app_layout.dart';
import 'package:flutter_airline_app/utils/app_styles.dart';
import 'package:flutter_airline_app/utils/widgets/app_layout_builder.dart';
import 'package:flutter_airline_app/utils/widgets/card_info.dart';
import 'package:flutter_airline_app/utils/widgets/ticket_tab.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';
import '../utils/widgets/rounded_circle.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(20),
              horizontal: AppLayout.getWidth(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              "Tickets",
              style: Styles.headlineStyle1,
            ),
            Gap(AppLayout.getHeight(20)),
            const TicketTab(tab1: "Upcoming", tab2: 'Previous'),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
              // padding: EdgeInsets.only(left: AppLayout.getWidth(15)),
              child: TicketView(
                ticket: ticketList.first,
                iscolor: true,
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(20),
                  horizontal: AppLayout.getHeight(20)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppColumnLayout(
                        text1: "Flutter DB",
                        text2: "Passenger",
                        algn: CrossAxisAlignment.start,
                      ),
                      const AppColumnLayout(
                        text1: '5211478566',
                        text2: 'passport',
                        algn: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(16)),
                  SizedBox(
                    height: AppLayout.getHeight(24),
                    child: ApplayoutBuilder(
                      sections: 16,
                      iscolor: true,
                    ),
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                          text1: "0555 444 7772",
                          text2: "Number of ticket",
                          algn: CrossAxisAlignment.start),
                      AppColumnLayout(
                          text1: "B2SG28",
                          text2: "Booking code",
                          algn: CrossAxisAlignment.end)
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  ApplayoutBuilder(
                    sections: 15,
                    iscolor: true,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/visa.png",
                                width: 50,
                                // height: 20,
                                fit: BoxFit.fitWidth,
                              ),
                              Text(
                                "*** 2463",
                                style: Styles.headlineStyle3,
                              )
                            ],
                          ),
                          Gap(AppLayout.getHeight(5)),
                          Text(
                            "Payment Method",
                            style: Styles.headlineStyle4
                                .copyWith(color: Colors.grey.shade500),
                          )
                        ],
                      ),
                      AppColumnLayout(
                        text1: "\$249.99",
                        text2: "Price",
                        algn: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(10)),
                  SizedBox(
                    child: Container(color: Colors.grey.shade200),
                    height: 1,
                  ),
                  Gap(5),
                ],
              ),
            ),
            // =========================//bar code widget//=============================
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppLayout.getHeight(20)),
                    bottomRight: Radius.circular(AppLayout.getHeight(20))),
              ),
              margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(5),
                  horizontal: AppLayout.getHeight(15)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                child: BarcodeWidget(
                  height: AppLayout.getHeight(70),
                  barcode: Barcode.code128(),
                  data: "https.google.com.pk",
                  drawText: false,
                  color: Styles.textColor,
                  width: double.infinity,
                ),
              ),
            ),
            Gap(AppLayout.getHeight(10)),
            // ticket colorful=/////
            Container(
                padding: EdgeInsets.only(
                    right: AppLayout.getHeight(20),
                    top: AppLayout.getHeight(20)),
                child: TicketView(
                  ticket: ticketList.first,
                ))
          ],
        ),
        Positioned(
          left: AppLayout.getHeight(30),
          top: AppLayout.getHeight(221),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
            padding: EdgeInsets.all(AppLayout.getHeight(4)),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 4,
            ),
          ),
        ),
        Positioned(
          right: AppLayout.getHeight(30),
          top: AppLayout.getHeight(221),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
            padding: EdgeInsets.all(AppLayout.getHeight(4)),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 4,
            ),
          ),
        )
      ]),
    );
  }
}
