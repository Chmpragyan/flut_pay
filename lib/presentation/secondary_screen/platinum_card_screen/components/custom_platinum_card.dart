import 'package:flut_pay/presentation/secondary_screen/platinum_card_screen/components/custom_circle_container.dart';
import 'package:flutter/material.dart';

class CustomPlatinumCard extends StatelessWidget {
  const CustomPlatinumCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 190,
          width: 310,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        Positioned(
          top: 50,
          left: 20,
          child: Image.asset(
            'assets/images/chip.png',
            color: Colors.white,
          ),
        ),
        Positioned(
          right: 60,
          bottom: 30,
          child: CustomCircleCont(
            contColor: Color.fromARGB(190, 255, 17, 0),
          ),
        ),
        Positioned(
          right: 20,
          bottom: 30,
          child: CustomCircleCont(
            contColor: Color.fromARGB(204, 255, 153, 0),
          ),
        ),
        Positioned(
          top: 130,
          left: 20,
          child: Text(
            "JOHN HARY DOE",
            style: TextStyle(
              color: Colors.white54,
            ),
          ),
        ),
        Positioned(
          top: 150,
          left: 20,
          child: Text(
            "3256 XXXX XXXX XXXX",
            style: TextStyle(
              color: Colors.white54,
            ),
          ),
        ),
      ],
    );
  }
}
