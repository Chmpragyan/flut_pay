import 'package:flut_pay/core/color_const.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CustomContainerSpending extends StatelessWidget {
  final String title;
  final String subtitle;
  final String amount;
  final IconData iconData;

  const CustomContainerSpending(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.amount, required this.iconData,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      height: 100,
      width: double.maxFinite,
      // color: Colors.white,
      child: Column(
        children: [
          ListTile(
            title: Text(title),
            subtitle: Text(subtitle),
            leading: Icon(iconData, color: Color.fromARGB(255, 74, 66, 97),),
            trailing: Text(amount),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 13),
            child: LinearPercentIndicator(
              // width: MediaQuery.sizeOf(context).width * 0.84,
              lineHeight: 6.0,
              percent: 0.6,
              backgroundColor: Colors.grey,
              barRadius: Radius.circular(3.0),
              linearGradient: containerGradColors[0],
            ),
          ),
        ],
      ),
    );
  }
}
