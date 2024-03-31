import 'package:flut_pay/presentation/primary_screen/register_screen/widget/register_textform.dart';
import 'package:flut_pay/presentation/primary_screen/widgets/custom_sizebox.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_primary_text.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBoxTop(),
        CustomHeading(headingText: "Sign Up",),
        SizedBoxHeight(),
        SizedBoxHeight(),
        RegisterTextField(),
        SizedBoxHeight(),
      ],
    );
  }
}
