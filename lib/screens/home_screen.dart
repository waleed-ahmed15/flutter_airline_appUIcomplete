import 'package:flutter/material.dart';
import 'package:flutter_airline_app/screens/hotels_screen.dart';
import 'package:flutter_airline_app/screens/ticket_view.dart';
import 'package:flutter_airline_app/utils/app_info_list.dart';
import 'package:flutter_airline_app/utils/app_styles.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: ListView(children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: Styles.headlineStyle3,
                      ),
                      const Gap(5),
                      Text(
                        "Book tickets",
                        style: Styles.headlineStyle1,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/images/img_1.png')),
                  ),
                ],
              ),
              const Gap(25),
              TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: const Icon(Icons.search),
                  prefixIconColor: Colors.black,
                  hintText: "Search",
                  hintStyle: Styles.headlineStyle3,
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
              const Gap(40),
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
            ],
          ),
        ),
        const Gap(20),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList
                  .map((curr_ticket) => TicketView(ticket: curr_ticket))
                  .toList(),
            )),
        Gap(15),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hotels",
                style: Styles.headlineStyle2,
              ),
              InkWell(
                onTap: () {
                  print("view all was tapped");
                },
                child: Text(
                  "View all",
                  style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                ),
              )
            ],
          ),
        ),
        Gap(15),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: hotelList
                  .map((hotel) => HotelScreen(
                        hotel: hotel,
                      ))
                  .toList(),
            ),
          ),
        )
      ]),
    );
  }
}
