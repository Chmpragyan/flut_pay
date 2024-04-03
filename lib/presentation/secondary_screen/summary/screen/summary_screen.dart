import 'package:flut_pay/presentation/secondary_screen/spending/components/custom_container.dart';
import 'package:flut_pay/presentation/secondary_screen/summary/component/custom_linechart.dart';
import 'package:flut_pay/presentation/secondary_screen/widgets/custom_cont_category.dart';
import 'package:flut_pay/presentation/secondary_screen/widgets/custom_container.dart';
import 'package:flut_pay/presentation/secondary_screen/widgets/custom_sizedbox.dart';
import 'package:flut_pay/presentation/secondary_screen/widgets/secondary_text.dart';
import 'package:flutter/material.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Set Budget",
              style: TextStyle(color: Colors.deepPurple),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.54,
                      width: double.maxFinite,
                      // color: Colors.red,
                    ),
                    Positioned(
                      top: 30,
                      left: 120,
                      child: Text(
                        "Your balance is \$1,750",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 70,
                      left: 100,
                      child: Text(
                        "By this time last month you spent \nslightly higher \$2,230",
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                    // Container(
                    //   height: MediaQuery.of(context).size.height * 0.3,
                    //   width: double.maxFinite,
                    //   decoration: BoxDecoration(
                    //     gradient: containerGradColors[0],
                    //   ),
                    // ),

                    Positioned(top: 90, child: CustomLineChart()),
                    Positioned(
                      top: 250,
                      left: 25,
                      child: Container(
                        padding: EdgeInsets.only(left: 25, right: 25),
                        height: MediaQuery.of(context).size.height * 0.13,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CustomCircleContainer(
                                      containerColor: Colors.red,
                                    ),
                                    CustomSizedBoxWidth(
                                      sWidth: 10,
                                    ),
                                    Column(
                                      children: [
                                        CustomNormalText(
                                          normalText: "Amount",
                                        ),
                                        CustomAmountText(amountText: "\$1,250"),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    CustomCircleContainer(
                                      containerColor: Colors.deepPurple,
                                    ),
                                    CustomSizedBoxWidth(
                                      sWidth: 10,
                                    ),
                                    Column(
                                      children: [
                                        CustomNormalText(
                                          normalText: "Loaned",
                                        ),
                                        CustomAmountText(amountText: "\$3,050"),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: CustomTitle(text: "Top Category"),
            ),
            CustomSizedBoxHeight(),
            Container(
              margin: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: [
                  CustomContainerSpending(
                    title: "Dominos Pizza",
                    subtitle: "4 transactions",
                    amount: "\$65",
                    iconData: Icons.local_pizza,
                  ),
                  Divider(
                    thickness: 5,
                    color: Color.fromARGB(192, 237, 235, 235),
                    endIndent: 35,
                    indent: 65,
                  ),
                  CustomSizedBoxHeight(),
                  CustomContainerSpending(
                    title: "Drop Box",
                    subtitle: "4 transactions",
                    amount: "\$65",
                    iconData: Icons.add_box,
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
            CustomSizedBoxHeight(),
            CustomSizedBoxHeight(),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: CustomTitle(text: "Top Category"),
            ),
            CustomSizedBoxHeight(),
            CustomSizedBoxHeight(),
            CustomCategoryContainer(),
            CustomSizedBoxHeight(),
            CustomSizedBoxHeight(),
          ],
        ),
      ),
    );
  }
}
