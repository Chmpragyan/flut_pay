import 'package:flut_pay/core/color_const.dart';
import 'package:flut_pay/presentation/secondary_screen/widgets/custom_button.dart';
import 'package:flut_pay/presentation/secondary_screen/widgets/custom_sizedbox.dart';
import 'package:flut_pay/presentation/secondary_screen/widgets/secondary_text.dart';
import 'package:flutter/material.dart';

import 'package:table_calendar/table_calendar.dart';

class CalenderScreen extends StatelessWidget {
  const CalenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.red,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  decoration: BoxDecoration(
                    gradient: containerGradColors[0],
                  ),
                  child: TableCalendar(
                    rowHeight: 40.0,
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: DateTime.now(),
                    headerStyle: HeaderStyle(
                      titleTextStyle: TextStyle(color: Colors.white),
                      formatButtonTextStyle: TextStyle(color: Colors.white),
                    ),
                    calendarStyle: CalendarStyle(
                      outsideDaysVisible: false,
                      defaultTextStyle: TextStyle(color: Colors.white),
                      weekendTextStyle: TextStyle(color: Colors.black),
                    ),
                    daysOfWeekStyle: DaysOfWeekStyle(
                      weekdayStyle: TextStyle(color: Colors.white),
                      weekendStyle: TextStyle(color: Colors.white),
                    ),
                    daysOfWeekVisible: false,
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.45,
                  left: MediaQuery.of(context).size.width * 0.06,
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 15,
                      bottom: 15,
                    ),
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              // color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Image.asset(
                              'assets/images/card.png',
                              color: Colors.deepPurple,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ),
                        CustomSizedBoxWidth(sWidth: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomNormalText(
                                normalText:
                                    "Lorem ipsum dolor sit amet ipsum,Lorem ipsum dolor sit ametLorem ipsum dolor sit amet",
                                txtColor: Colors.white,
                              ),
                              CustomTextButtom(
                                textBtn: "Tell me more",
                                btnClr: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.7 - 10,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, left: 15.0, bottom: 10),
                          child: CustomTitle(text: "This month"),
                        ),
                        Divider(
                          thickness: 5,
                          color: Color.fromARGB(179, 245, 242, 242),
                        ),
                        ListTile(
                          horizontalTitleGap: 40,
                          leading: Column(
                            children: [
                              CustomNormalText(normalText: "Nov"),
                              CustomTitle(text: "21"),
                            ],
                          ),
                          title: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/images/netflix.png',
                                color: Colors.red,
                              ),
                              CustomSizedBoxWidth(sWidth: 30),
                              CustomTitle(text: "Netflix"),
                            ],
                          ),
                          trailing: CustomTitle(text: "\$99.9"),
                        ),
                        Divider(
                          thickness: 5,
                          color: Color.fromARGB(179, 245, 242, 242),
                        ),
                        // CustomSizedBoxHeight(),
                        ListTile(
                          horizontalTitleGap: 40,
                          leading: Column(
                            children: [
                              CustomNormalText(normalText: "Nov"),
                              CustomTitle(text: "21"),
                            ],
                          ),
                          title: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/images/dropbox.png',
                                color: Colors.blue,
                              ),
                              CustomSizedBoxWidth(sWidth: 30),
                              CustomTitle(text: "Dropbox"),
                            ],
                          ),
                          trailing: CustomTitle(text: "\$101.9"),
                        ),
                        Divider(
                          thickness: 5,
                          color: Color.fromARGB(179, 245, 242, 242),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
