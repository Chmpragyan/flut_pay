import 'package:flut_pay/core/color_const.dart';
import 'package:flut_pay/presentation/secondary_screen/budget_screen/component/custom_budget_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BudgetScreen extends StatelessWidget {
  const BudgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          "Budget",
          style: TextStyle(color: Colors.white),
        ),
        // leading: Icon(
        //   // Icons.arrow_back_ios,
        //   color: Colors.white,
        // ),
        backgroundColor: Color.fromARGB(255, 104, 58, 183),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: double.maxFinite,
              width: double.maxFinite,
            ),
            Container(
              padding: EdgeInsets.only(top: 35),
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: containerGradColors[0],
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(15, 15),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    "\$167",
                    style: TextStyle(fontSize: 60, color: Colors.white),
                  ),
                  Text(
                    "Budget this month",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2 - 170,
              // left: MediaQuery.of(context).size.width / 2 - 160,
              child: Container(
                // margin: EdgeInsets.only(left: 20, right: 20),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                // color: Colors.red,
                child: Column(
                  children: [
                    CustomBudgetCard(
                      title: "Food",
                      imagePath: 'assets/images/food.png',
                      percentValue: 0.4,
                      priceOnIndicator: 167,
                      trailingText: "\$60/Day",
                    ),
                    CustomBudgetCard(
                      title: "Transport",
                      imagePath: 'assets/images/transport.png',
                      percentValue: 0.6,
                      priceOnIndicator: 167,
                      trailingText: "\$40/Day",
                    ),
                    CustomBudgetCard(
                      title: "Accomodation",
                      imagePath: 'assets/images/home.png',
                      percentValue: 0.3,
                      priceOnIndicator: 167,
                      trailingText: "\$50/Day",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
