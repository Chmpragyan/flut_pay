import 'package:flutter/material.dart';

class CustomAmountText extends StatelessWidget {
  final String amountText;
  final Color? textColor;
  const CustomAmountText({super.key, required this.amountText, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      amountText,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        color: textColor,
      ),
    );
  }
}

class CustomNormalText extends StatelessWidget {
  final String? normalText;
  final Color? txtColor;
  const CustomNormalText({super.key, this.normalText, this.txtColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      normalText ?? '',
      style: TextStyle(
        fontSize: 14,
        color: txtColor,
      ),
      overflow: TextOverflow.clip,
    );
  }
}

class CustomTitle extends StatelessWidget {
  final String text;
  final Color? txtColor;
  const CustomTitle({super.key, required this.text, this.txtColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: txtColor,
      ),
    );
  }
}
