import 'package:flut_pay/presentation/secondary_screen/spending/components/custom_container.dart';
import 'package:flut_pay/presentation/secondary_screen/spending/components/custom_piechart.dart';
import 'package:flut_pay/presentation/secondary_screen/widgets/custom_sizedbox.dart';
import 'package:flutter/material.dart';

class SpendingScreen extends StatelessWidget {
  const SpendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Spending"),
        leading: Icon(Icons.arrow_back_ios),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomPieChart(),
            CustomContainerSpending(
              title: "Eating Out",
              subtitle: "4 transactions",
              amount: "\$65",
              iconData: Icons.food_bank,
            ),
            Divider(
              thickness: 5,
              color: Color.fromARGB(192, 237, 235, 235),
              endIndent: 35,
              indent: 65,
            ),
            CustomSizedBoxHeight(),
            CustomContainerSpending(
              title: "Education",
              subtitle: "4 transactions",
              amount: "\$65",
              iconData: Icons.book,
            ),
            Divider(
              thickness: 5,
              color: Color.fromARGB(192, 237, 235, 235),
              endIndent: 35,
              indent: 65,
            ),
            CustomSizedBoxHeight(),
            CustomContainerSpending(
              title: "Transportation",
              subtitle: "4 transactions",
              amount: "\$65",
              iconData: Icons.car_rental,
            ),
            Divider(
              thickness: 5,
              color: Color.fromARGB(192, 237, 235, 235),
              endIndent: 35,
              indent: 65,
            ),
            CustomSizedBoxHeight(),
            CustomContainerSpending(
              title: "Entertainment",
              subtitle: "4 transactions",
              amount: "\$65",
              iconData: Icons.games,
            ),
            Divider(
              thickness: 5,
              color: Color.fromARGB(192, 237, 235, 235),
              endIndent: 35,
              indent: 65,
            ),
            CustomSizedBoxHeight(),
          ],
        ),
      ),
    );
  }
}
