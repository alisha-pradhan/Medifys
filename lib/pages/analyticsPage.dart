import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

// void main() {
//   runApp(const MyApp());
// }

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var arrLabel = [
      'Height :',
      'Weight :',
      'BMI :',
      'Heartrate :',
      'Steps :',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        leading: BackButton(),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 300,
              child: LineChartWidget(),
            ),
            Container(
              alignment: Alignment.centerLeft,
              height: 175,
              child: CircularCHarts(),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 28),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    arrLabel[0],
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    arrLabel[1],
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                    ),
                  ),
                  Text(arrLabel[2],
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic,
                          fontSize: 20)),
                  Text(arrLabel[3],
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic,
                          fontSize: 20)),
                  Text(arrLabel[4],
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic,
                          fontSize: 20)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//************************ */

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: LineChart(
        LineChartData(
          gridData: FlGridData(
            show: true,
            horizontalInterval: 1.0, // Customize the interval as needed
            drawVerticalLine: false,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 1,
              );
            },
          ),
          titlesData: const FlTitlesData(
              show: false, leftTitles: AxisTitles(sideTitles: SideTitles())),
          borderData: FlBorderData(
            show: false,
            border: Border.all(color: const Color(0xff37434d), width: 1),
          ),
          minX: 0,
          maxX: 8,
          minY: 0,
          maxY: 6,
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 3),
                FlSpot(1, 1),
                FlSpot(2, 4),
                FlSpot(3, 2),
                FlSpot(4, 5),
                FlSpot(5, 4),
                FlSpot(6, 6),
              ],
              isCurved: false,
              color: Colors.blue,
              dotData: FlDotData(show: true),
              belowBarData: BarAreaData(show: false),
              show: true,
            ),
            LineChartBarData(
              spots: [
                FlSpot(0, 1),
                FlSpot(1, 2),
                FlSpot(2, 4),
                FlSpot(3, 3),
                FlSpot(4, 2),
                FlSpot(5, 5),
                FlSpot(6, 3),
              ],
              isCurved: false,
              color: Colors.red,
              // colors: [Colors.red],
              dotData: FlDotData(show: true),
              show: true,
              belowBarData: BarAreaData(show: false),
            ),
          ],
        ),
      ),
    );
  }
}

//*********************** */

class CircularCHarts extends StatefulWidget {
  const CircularCHarts({super.key});

  @override
  State<CircularCHarts> createState() => _CircularCHartsState();
}

class _CircularCHartsState extends State<CircularCHarts> {
  List chartData = [
    [40, 'bpm', Colors.blueAccent[700]],
    [40, 'sleep', Color.fromARGB(249, 36, 88, 230)],
    [40, 'steps', Color.fromARGB(255, 41, 98, 255)],
    [40, 'hearts', Color.fromARGB(253, 30, 73, 190)],
    [40, 'weight', Color.fromARGB(252, 19, 73, 221)],
    [40, 'calorie', Color.fromARGB(251, 17, 57, 167)],
    [40, 'power', Color.fromARGB(250, 58, 104, 231)],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfCircularChart(
        margin: EdgeInsets.all(0),
        series: [
          DoughnutSeries(
            dataSource: chartData,
            yValueMapper: (data, _) => data[0],
            xValueMapper: (data, _) => data[1],
            radius: '91%',
            innerRadius: '40%',
            explode: true,
            pointColorMapper: (data, _) => data[2],
            dataLabelMapper: (data, _) => data[0].toString() + ' K',
            dataLabelSettings: DataLabelSettings(
                isVisible: true,
                textStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
                labelPosition: ChartDataLabelPosition.inside),
          )
        ],
        legend: Legend(
          isVisible: true,
          position: LegendPosition.right,
          orientation: LegendItemOrientation.vertical,
          textStyle: TextStyle(fontSize: 14),
          iconHeight: 10,
          iconWidth: 10,
        ),
      ),
    );
  }
}
