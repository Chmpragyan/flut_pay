import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double btnWidth;
  final Color? btnColor;
  final IconData? btnIcon;
  const CustomButton({
    super.key,
    required this.text,
    required this.btnWidth,
    this.btnColor,
    this.btnIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: btnWidth,
      alignment: AlignmentDirectional.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            btnIcon,
            color: Colors.white,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: btnColor,
        // gradient: LinearGradient(
        //   begin: Alignment.topLeft,
        //   colors: buttonColor,
        // ),
        // boxShadow: [
        //   BoxShadow(
        //     offset: Offset(1, 2),
        //     blurRadius: 6,
        //   ),
        // ],
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final IconData? btnIcon;
  final Color? btnColor;
  const CustomElevatedButton(
      {super.key, required this.text, this.btnIcon, this.btnColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: btnColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        minimumSize: Size(MediaQuery.of(context).size.width * 0.38, 50),
      ),
      icon: Icon(
        btnIcon,
        color: Colors.white,
      ),
      label: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
