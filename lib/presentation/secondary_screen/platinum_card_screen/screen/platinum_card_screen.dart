import 'package:flut_pay/core/color_const.dart';
import 'package:flut_pay/core/image_constants.dart';
import 'package:flut_pay/core/text_const.dart';
import 'package:flut_pay/presentation/secondary_screen/platinum_card_screen/components/custom_platinum_card.dart';
import 'package:flut_pay/presentation/secondary_screen/widgets/custom_sizedbox.dart';
import 'package:flut_pay/presentation/secondary_screen/widgets/secondary_text.dart';
import 'package:flutter/material.dart';

class PlatinumCardScreen extends StatelessWidget {
  const PlatinumCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.47,
                  width: double.maxFinite,
                  // color: Colors.red,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    gradient: containerGradColors[0],
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.55 / 2 - 60,
                  left: MediaQuery.of(context).size.width / 2 - 150,
                  child: CustomPlatinumCard(),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.55 / 2 - 130,
                  left: MediaQuery.of(context).size.width / 2 - 70,
                  child: CustomTitle(
                    text: "My Platinum Card",
                    txtColor: Colors.white,
                  ),
                ),
              ],
            ),
            CustomSizedBoxHeight(),
            CustomSizedBoxHeight(),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 10,
              ),
              height: 150,
              width: double.maxFinite,
              // color: Colors.red,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: activityIcons.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  // crossAxisSpacing: 4,
                  mainAxisSpacing: 6,
                ),
                itemBuilder: ((context, index) {
                  return Card(
                    // margin: EdgeInsets.only(left: 5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            gradient: containerGradColors[0],
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Image.asset(
                            platinumIcons[index],
                            color: Colors.white,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        CustomNormalText(
                          normalText: platinumText[index],
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
                text: "Settings",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListTile(
                title: CustomTitle(text: "Set Card Limit"),
                subtitle: CustomNormalText(
                  normalText: "You can set the limit amount.",
                ),
                trailing: Icon(
                  Icons.toggle_on_outlined,
                  size: 50,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            Divider(
              color: Color.fromARGB(199, 219, 215, 215),
              thickness: 5,
              indent: 30,
              endIndent: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListTile(
                title: CustomTitle(text: "Set Card Limit"),
                subtitle: CustomNormalText(
                  normalText: "You can set the limit amount.",
                ),
                trailing: Icon(
                  Icons.toggle_on_outlined,
                  size: 50,
                  color: Colors.deepPurple,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
