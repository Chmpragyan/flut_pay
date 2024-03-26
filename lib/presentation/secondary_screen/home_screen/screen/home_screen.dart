import 'package:flut_pay/core/color_const.dart';
import 'package:flut_pay/core/image_constants.dart';
import 'package:flut_pay/core/text_const.dart';
import 'package:flut_pay/presentation/secondary_screen/widgets/custom_button.dart';
import 'package:flut_pay/presentation/secondary_screen/widgets/custom_container.dart';
import 'package:flut_pay/presentation/secondary_screen/widgets/custom_sizedbox.dart';
import 'package:flut_pay/presentation/secondary_screen/widgets/secondary_text.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(220, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.55,
                  width: double.maxFinite,
                  // color: Colors.red,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    gradient: containerGradColors[0],
                  ),
                ),
                Positioned(
                  top: 170,
                  left: 25,
                  child: Container(
                    padding: EdgeInsets.only(left: 25, right: 25),
                    height: MediaQuery.of(context).size.height * 0.3,
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
                                CustomSizedBoxWidth(sWidth: 10,),
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
                                CustomSizedBoxWidth(sWidth: 10,),
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
                        CustomNormalText(
                          normalText:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis volutpat mauris ut",
                        ),
                        CustomTextButtom(
                          textBtn: "Tell me more",
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 30,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomAmountText(
                            amountText: "\$1750",
                            textColor: Colors.white,
                          ),
                          CustomNormalText(
                            normalText: "Available balance",
                            txtColor: Colors.white,
                          ),
                        ],
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://e7.pngegg.com/pngimages/439/19/png-clipart-avatar-user-profile-icon-women-wear-frock-face-holidays.png",
                        ),
                        radius: 30.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            CustomSizedBoxHeight(),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: CustomTitle(
                text: "Activity",
              ),
            ),
            CustomSizedBoxHeight(),
            Container(
              margin: EdgeInsets.only(left: 20),
              height: 150,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: activityIcons.length,
                // itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                ),
                itemBuilder: ((context, index) {
                  return Card(
                    // margin: EdgeInsets.only(left: 5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            gradient: containerGradColors[0],
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Image.asset(
                            activityIcons[index],
                            color: Colors.white,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        CustomNormalText(
                          normalText: activityText[index],
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            CustomSizedBoxHeight(),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: CustomTitle(
                text: "Complete Verification",
              ),
            ),
            CustomSizedBoxHeight(),
            Container(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              margin: EdgeInsets.only(left: 25.0, right: 20.0),
              // height: MediaQuery.sizeOf(context).height * 0.45,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "60%",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: CustomNormalText(
                          normalText: "1 of 10 Completed",
                        ),
                      ),
                    ],
                  ),
                  CustomSizedBoxHeight(),
                  LinearPercentIndicator(
                    // width: MediaQuery.sizeOf(context).width * 0.84,
                    lineHeight: 10.0,
                    percent: 0.6,
                    backgroundColor: Colors.grey,
                    barRadius: Radius.circular(3.0),
                    linearGradient: containerGradColors[0],
                  ),
                  CustomSizedBoxHeight(),
                  ListTile(
                    title: CustomTitle(text: "Personal Information"),
                    subtitle: CustomNormalText(
                      normalText:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ac mi id tellus facilisis",
                    ),
                    leading: Icon(Icons.person),
                  ),
                  CustomSizedBoxHeight(),
                  ListTile(
                    title: CustomNormalText(normalText: "Verification"),
                    leading: Icon(Icons.domain_verification),
                  ),
                  CustomSizedBoxHeight(),
                  ListTile(
                    title: CustomNormalText(normalText: "Confirm Email"),
                    leading: Icon(Icons.confirmation_num),
                  ),
                ],
              ),
            ),
            CustomSizedBoxHeight(),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: CustomTitle(
                text: "News and Promo",
              ),
            ),
            CustomSizedBoxHeight(),
            Container(
              // padding: EdgeInsets.only(
              //   left: 10,
              //   right: 10,
              // ),
              margin: EdgeInsets.only(left: 25.0, right: 20.0),
              height: MediaQuery.sizeOf(context).height * 0.5,
              // height: double.infinity,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnnu6obVk9X7KpF7ddIVK0Xukk7GK5uWC1GA&usqp=CAU",
                      fit: BoxFit.cover,
                      width: double.maxFinite,
                    ),
                  ),
                  CustomSizedBoxHeight(),
                  Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: CustomTitle(text: "Share and invite your friends!"),
                  ),
                  CustomSizedBoxHeight(),
                  Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: CustomNormalText(
                      normalText:
                          "Invite friends to register on our app. For every user you invite you can earn upto Rs. 50.",
                    ),
                  ),
                  CustomSizedBoxHeight(),
                  Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: CustomTextButtom(textBtn: "Invite Now"),
                  ),
                ],
              ),
            ),
            CustomSizedBoxHeight(),
          ],
        ),
      ),
    );
  }
}
