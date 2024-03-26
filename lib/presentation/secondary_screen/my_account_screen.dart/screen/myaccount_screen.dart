// import 'package:flut_pay/presentation/secondary_screen/my_account_screen.dart/component/custom_account_cont.dart';
import 'package:flut_pay/presentation/secondary_screen/my_account_screen.dart/component/custom_account_cont.dart';
import 'package:flut_pay/presentation/secondary_screen/widgets/custom_button.dart';
import 'package:flut_pay/presentation/secondary_screen/widgets/custom_sizedbox.dart';
import 'package:flut_pay/presentation/secondary_screen/widgets/secondary_text.dart';
import 'package:flutter/material.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(236, 255, 255, 255),
      appBar: AppBar(
        title: CustomTitle(text: "My Account"),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.deepPurple,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 20),
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  IconButton(onPressed: (){},icon:Icon(Icons.person),color: Colors.deepPurple,),
                  CustomSizedBoxWidth(sWidth: 10),
                  CustomTextButtom(textBtn: "Link new account"),
                ],
              ),
            ),
            CustomSizedBoxHeight(),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: CustomTitle(text: "Bank Account"),
            ),
            CustomAccountCard(
              contTitle: "CityBank",
              contSubtitle: "Checking Status",
              balanceAmnt: "\$2390",
              imagePath: 'assets/images/city_bank.png',
              logoColor: Color.fromARGB(255, 7, 67, 78),
            ),
            CustomAccountCard(
              contTitle: "Bank of America",
              contSubtitle: "Checking Status",
              balanceAmnt: "\$1370",
              imagePath: 'assets/images/boa.png',
              logoColor: Colors.red,
            ),
            CustomSizedBoxHeight(),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: CustomTitle(text: "Debit Card"),
            ),
            CustomAccountCard(
              contTitle: "Visa Card",
              contSubtitle: "Visa *2367",
              balanceAmnt: "\$5340",
              imagePath: 'assets/images/visa.png',
              logoColor: Color.fromARGB(255, 20, 36, 159),
            ),
          ],
        ),
      ),
    );
  }
}
