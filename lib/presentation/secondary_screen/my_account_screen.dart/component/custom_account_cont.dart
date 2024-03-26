import 'package:flut_pay/presentation/secondary_screen/widgets/custom_sizedbox.dart';
import 'package:flutter/material.dart';

class CustomAccountCard extends StatelessWidget {
  final String contTitle;
  final String contSubtitle;
  final String balanceAmnt;
  final String imagePath;
  final Color? logoColor;

  const CustomAccountCard({
    super.key,
    required this.contTitle,
    required this.contSubtitle,
    required this.balanceAmnt,
    required this.imagePath,
    this.logoColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 30,
        right: 30,
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
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: logoColor,
                      // color: Color.fromARGB(255, 7, 67, 78),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        imagePath,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  CustomSizedBoxWidth(sWidth: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        contTitle,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        contSubtitle,
                        style: TextStyle(
                          fontSize: 14,
                          // color: txtColor,
                        ),
                        overflow: TextOverflow.clip,
                      ),
                    ],
                  ),
                ],
              ),
              Icon(
                Icons.more_horiz,
              ),
            ],
          ),
          Divider(
            thickness: 5,
            color: Color.fromARGB(192, 249, 247, 247),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Available Balance"),
                  Text(
                    balanceAmnt,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
              Icon(
                Icons.toggle_on_outlined,
                size: 50,
                color: Colors.deepPurple,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
