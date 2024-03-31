import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:path_provider/path_provider.dart';

class CustomHeading extends StatelessWidget {
  final String headingText;
  const CustomHeading({super.key, required this.headingText});

  @override
  Widget build(BuildContext context) {
    return Text(headingText,
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ));
  }
}

class CustomSubHeading extends StatelessWidget {
  const CustomSubHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Hi there! Nice to see you again.",
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Colors.grey[600],
        ));
  }
}

class CustomText extends StatelessWidget {
  final String normalText;
  final Color? textColor;
  CustomText({required this.normalText, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      normalText,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: textColor,
        overflow: TextOverflow.clip,
      ),
    );
  }
}

class CustomRichText extends StatelessWidget {
  final String? text;
  final String? richText;
  const CustomRichText({super.key, this.text, this.richText});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: TextStyle(
          color: Colors.grey[600],
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        children: [
          TextSpan(
            text: richText,
            style: TextStyle(
              color: Colors.red[300],
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
