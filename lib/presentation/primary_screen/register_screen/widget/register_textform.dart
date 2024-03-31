import 'package:flut_pay/presentation/primary_screen/login_screen/body.dart';
import 'package:flut_pay/presentation/primary_screen/widgets/custom_sizebox.dart';
import 'package:flut_pay/widgets/custom_button.dart';
import 'package:flut_pay/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/custom_primary_text.dart';

class RegisterTextField extends StatefulWidget {
  const RegisterTextField({super.key});

  @override
  State<RegisterTextField> createState() => _RegisterTextFieldState();
}

class _RegisterTextFieldState extends State<RegisterTextField> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: customFormField(labelText: "Email"),
        ),
        SizedBoxHeight(),
        TextFormField(
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
          decoration: customFormField(
            labelText: "Password",
          ),
        ),
        SizedBoxHeight(),
        SizedBoxHeight(),
        SizedBoxHeight(),
        Row(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            // CustomText(
            //   normalText:
            //       "I agree to the Terms of Services and \nPrivacy Policy.",
            //   textColor: Colors.grey[600],
            // ),

            CustomRichText(text: "I agree to the ", richText: "Terms of Services\nPrivacy Policy.",),
            
          ],
        ),
        SizedBoxHeight(),
        SizedBoxHeight(),
        SizedBoxHeight(),
        InkWell(
          onTap: () {},
          child: CustomButton(
            btnWidth: MediaQuery.of(context).size.width * 0.9,
            btnColor: Colors.red[300],
            text: "Continue",
          ),
        ),
        SizedBoxHeight(),
        SizedBoxHeight(),
        SizedBoxHeight(),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: CustomText(
                normalText: "Have an Account? ",
                textColor: Colors.grey[600],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LoginScreen(),
                  ),
                );
              },
              child: CustomText(
                normalText: "Sign In",
                textColor: Colors.red[300],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
