// import 'package:app_class/presentation/screens/secondary_screen/home_screen/body.dart';
import 'package:flut_pay/presentation/primary_screen/register_screen/body.dart';
import 'package:flut_pay/presentation/primary_screen/widgets/custom_sizebox.dart';
import 'package:flut_pay/presentation/secondary_screen/home_screen/screen/home_screen.dart';
import 'package:flut_pay/widgets/custom_button.dart';
import 'package:flut_pay/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../widgets/custom_primary_text.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({super.key});

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
            icon: Icon(Icons.visibility),
          ),
        ),
        SizedBoxHeight(),
        SizedBoxHeight(),
        SizedBoxHeight(),
        SizedBoxHeight(),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => HomeScreen(),
              ),
            );
          },
          child: CustomButton(
            btnWidth: MediaQuery.of(context).size.width * 0.9,
            btnColor: Colors.red[300],
            text: "Sign In",
          ),
        ),
        SizedBoxHeight(),
        SizedBoxHeight(),
        SizedBoxHeight(),
        CustomText(
          normalText: "or use one of your social profiles",
          textColor: Colors.grey[600],
        ),
        SizedBoxHeight(),
        SizedBoxHeight(),
        SizedBoxHeight(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomElevatedButton(
              text: "Twitter",
              btnColor: Colors.blue,
              btnIcon: FontAwesomeIcons.twitter,
            ),
            CustomElevatedButton(
              text: "Facebook",
              btnColor: Color.fromRGBO(13, 84, 177, 1),
              btnIcon: FontAwesomeIcons.facebook,
            ),
          ],
        ),
        SizedBoxHeight(),
        SizedBoxHeight(),
        SizedBoxHeight(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: CustomText(
                normalText: "Forgot Password?",
                textColor: Colors.grey[600],
              ),
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => RegisterScreen()));
                },
                child: CustomText(
                  normalText: "Sign Up",
                  textColor: Colors.red[300],
                )),
          ],
        ),
      ],
    );
  }
}
