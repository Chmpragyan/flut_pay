import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomPieChart extends StatelessWidget {
  const CustomPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: PieChart(
        PieChartData(
          pieTouchData: PieTouchData(
              // touchCallback: (FlTouchEvent event, pieTouchResponse) {
              //   setState(() {
              //     if (!event.isInterestedForInteractions ||
              //         pieTouchResponse == null ||
              //         pieTouchResponse.touchedSection == null) {
              //       touchedIndex = -1;
              //       return;
              //     }
              //     touchedIndex = pieTouchResponse
              //         .touchedSection!.touchedSectionIndex;
              //   });
              // },
              ),
          borderData: FlBorderData(
            show: false,
          ),
          sectionsSpace: 0,
          centerSpaceRadius: 40,
          sections: showingSections(),
        ),
      ),
    );
  }
}

List<PieChartSectionData> showingSections() {
  int touchedIndex = -1;
  return List.generate(4, (i) {
    final isTouched = i == touchedIndex;
    final fontSize = isTouched ? 25.0 : 16.0;
    final radius = isTouched ? 60.0 : 50.0;
    const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
    switch (i) {
      case 0:
        return PieChartSectionData(
          color: Colors.blueGrey,
          value: 40,
          title: '40%',
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: shadows,
          ),
        );
      case 1:
        return PieChartSectionData(
          color: Colors.grey,
          value: 30,
          title: '30%',
          radius: 60,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: shadows,
          ),
        );
      case 2:
        return PieChartSectionData(
          color: Colors.deepPurple,
          value: 15,
          title: '15%',
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: shadows,
          ),
        );
      case 3:
        return PieChartSectionData(
          color: Colors.deepPurpleAccent,
          value: 15,
          title: '15%',
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: shadows,
          ),
        );
      default:
        throw Error();
    }
  });
}
