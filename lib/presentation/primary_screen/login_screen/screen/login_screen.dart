import 'package:flut_pay/presentation/primary_screen/login_screen/widgets/login_textform.dart';
import 'package:flut_pay/presentation/primary_screen/widgets/custom_sizebox.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_primary_text.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBoxTop(),
        Center(
          child: Column(
            children: [
              Icon(
                Icons.visibility,
                size: 70,
                color: Color.fromARGB(211, 9, 107, 181),
              ),
              CustomText(
                normalText: "Audio Vision",
                textColor: Colors.grey[600],
              ),
            ],
          ),
        ),
        SizedBoxTop(),
        CustomHeading(headingText: "Sign In",),
        SizedBoxHeight(),
        CustomSubHeading(),
        SizedBoxHeight(),
        LoginTextField(),
        SizedBoxHeight(),
      ],
    );
  }
}
