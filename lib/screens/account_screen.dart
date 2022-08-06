import 'package:flutter/material.dart';
import 'package:flutter_airline_app/screens/columnLayout.dart';
import 'package:flutter_airline_app/utils/app_layout.dart';
import 'package:flutter_airline_app/utils/app_styles.dart';
import 'package:flutter_airline_app/utils/widgets/app_layout_builder.dart';
import 'package:gap/gap.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: ListView(
        padding: EdgeInsets.all(
          AppLayout.getHeight(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    child: Image.asset(
                      ("assets/images/img_1.png"),
                      width: AppLayout.getWidth(90),
                      height: AppLayout.getHeight(90),
                    ),
                  ),
                  Gap(10),
                  Container(
                    height: AppLayout.getHeight(90),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Book Tickets",
                          style: Styles.headlineStyle1,
                        ),
                        Text(
                          "New York",
                          style: Styles.headlineStyle3,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          padding: EdgeInsets.all(4),
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.policy,
                                  color: Styles.primaryColor,
                                ),
                              ),
                              Gap(AppLayout.getWidth(3)),
                              Text(
                                "premium Status",
                                style: Styles.headlineStyle3
                                    .copyWith(color: Styles.primaryColor),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              InkWell(
                onTap: (() => print("edit was tapped")),
                child: Text(
                  "Edit",
                  style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Stack(
            children: [
              Positioned(
                right: -20,
                top: -20,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(25)),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Color.fromARGB(255, 0, 9, 170), width: 10)),
                ),
              ),
              Container(
                padding: EdgeInsets.all(AppLayout.getHeight(10)),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    color: Styles.primaryColor.withOpacity(0.86)),
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(10)),
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Icon(
                      Icons.lightbulb,
                      color: Styles.primaryColor,
                    ),
                  ),
                  title: Text(
                    "You have got a new award",
                    style: Styles.headlineStyle2.copyWith(color: Colors.white),
                  ),
                  subtitle: Text(
                    "You have got 150 flights in a year",
                    style:
                        Styles.headlineStyle4.copyWith(color: Colors.white70),
                  ),
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Text(
            "Accumulated miles",
            style: Styles.headlineStyle2,
          ),
          Gap(AppLayout.getHeight(20)),
          Center(
            child: Text(
              "192802",
              style: Styles.headlineStyle1.copyWith(fontSize: 40),
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppColumnLayout(
                  text1: "",
                  text2: 'Miles accured',
                  algn: CrossAxisAlignment.start),
              AppColumnLayout(
                  text1: "",
                  text2: '23 May 2021',
                  algn: CrossAxisAlignment.start),
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppColumnLayout(
                text1: "23 042",
                text2: 'Miles',
                algn: CrossAxisAlignment.start,
                tex1Color: true,
              ),
              AppColumnLayout(
                text1: "Airline CO",
                text2: 'Receieved from',
                algn: CrossAxisAlignment.end,
                tex1Color: true,
              ),
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppColumnLayout(
                text1: "24",
                text2: 'Miles',
                algn: CrossAxisAlignment.start,
                tex1Color: true,
              ),
              AppColumnLayout(
                text1: "McDonal's",
                text2: 'Receieved from',
                algn: CrossAxisAlignment.end,
                tex1Color: true,
              ),
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppColumnLayout(
                text1: "52 340",
                text2: 'Miles',
                algn: CrossAxisAlignment.start,
                tex1Color: true,
              ),
              AppColumnLayout(
                text1: "Exuma",
                text2: 'Receieved from',
                algn: CrossAxisAlignment.end,
                tex1Color: true,
              ),
            ],
          ),
          Gap(AppLayout.getHeight(10)),
          InkWell(
            onTap: () {
              print("how to get more miles was tapped");
            },
            child: Center(
              child: Text(
                "how to get more miles",
                style: Styles.textStyle.copyWith(
                  color: Styles.primaryColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
