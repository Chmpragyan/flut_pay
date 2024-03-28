import 'package:flutter/material.dart';

class CustomTextButtom extends StatelessWidget {
  final String textBtn;
  final Color? btnClr;
  const CustomTextButtom({super.key, required this.textBtn, this.btnClr});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Text(
        textBtn,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: btnClr,
        ),
      ),
    );
  }
}
