import 'package:flutter/material.dart';
import 'package:flutter_airline_app/utils/app_layout.dart';
import 'package:flutter_airline_app/utils/app_styles.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Container(
      margin: EdgeInsets.only(right: AppLayout.getHeight(20)),
      padding: EdgeInsets.all(AppLayout.getHeight(20)),
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
        color: Styles.primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
            child: Image.asset(
              "assets/images/" + hotel['image'],
              fit: BoxFit.fitHeight,
              // width: AppLayout.getWidth(180),
              height: AppLayout.getHeight(180),
            ),
          ),
          Gap(AppLayout.getHeight(5)),
          Text(
            hotel['place'],
            style: Styles.headlineStyle2.copyWith(color: Styles.kakiColor),
          ),
          Gap(AppLayout.getHeight(5)),
          Text(
            hotel['destination'],
            style: Styles.headlineStyle3.copyWith(color: Colors.white),
          ),
          Gap(AppLayout.getHeight(8)),
          Text(
            "\$${hotel['price']}/Night",
            style: Styles.headlineStyle1.copyWith(color: Styles.kakiColor),
          ),
          // Gap(AppLayout.getHeight(40)),
        ],
      ),
    );
  }
}
