import 'package:flut_pay/presentation/secondary_screen/widgets/custom_sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CustomBudgetCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final double percentValue;
  final int priceOnIndicator;
  final String trailingText;

  const CustomBudgetCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.percentValue,
    required this.priceOnIndicator,
    required this.trailingText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
        top: 10,
        bottom: 10,
      ),
      margin: EdgeInsets.only(left: 20, right: 20, top: 15),
      height: MediaQuery.of(context).size.height * 0.25,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    imagePath,
                    height: 40,
                    width: 40,
                    // color: Colors.red,
                  ),
                  CustomSizedBoxWidth(sWidth: 10),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Text(trailingText),
            ],
          ),
          LinearPercentIndicator(
            // width: MediaQuery.sizeOf(context).width * 0.84,
            lineHeight: 30.0,
            percent: percentValue,
            backgroundColor: Color.fromARGB(255, 238, 234, 234),
            barRadius: Radius.circular(15.0),
            progressColor: Colors.deepPurple[500],
            center: Text(
              priceOnIndicator.toString(),
              style: TextStyle(color: Colors.black),
            ),
          ),
          Divider(
            thickness: 5,
            color: Color.fromARGB(192, 237, 235, 235),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.deepPurple,
              ),
              Text(
                "Lorem ipsum dolor sit amet",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.clip,
                ),
                overflow: TextOverflow.clip,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
