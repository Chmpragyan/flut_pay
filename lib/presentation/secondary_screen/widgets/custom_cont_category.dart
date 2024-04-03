import 'package:flut_pay/core/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CustomCategoryContainer extends StatelessWidget {
  const CustomCategoryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        right: 10,
      ),
      height: 260,
      width: double.maxFinite,
      // color: Colors.red,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: activityIcons.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          // crossAxisSpacing: 4,
          mainAxisSpacing: 8,
        ),
        itemBuilder: ((context, index) {
          return Container(
            width: 150,
            padding: EdgeInsets.only(top: 20, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            // margin: EdgeInsets.only(left: 5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircularPercentIndicator(
                  percent: 0.6,
                  progressColor: Colors.deepPurple,
                  radius: 50,
                  center: Image.asset(
                    'assets/images/food.png',
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Text(
                  "Eating Out",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("\$165"),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey[300],
                    ),
                    child: Center(child: Text("Lorem ip")),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
