import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';



class ReportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Your Report",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Top Section - Earnings and Spending Bar Chart
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  const BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Earnings Line Chart
                  const Text(
                    "Earnings",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 200,
                    child: LineChart(
                      LineChartData(
                        gridData: const FlGridData(show: false),
                        titlesData: const FlTitlesData(show: true),
                        borderData: FlBorderData(show: true),
                        lineBarsData: [
                          LineChartBarData(
                            spots: [
                              const FlSpot(0, 100),
                              const FlSpot(1, 200),
                              const FlSpot(2, 150),
                              const FlSpot(3, 500),
                              const FlSpot(4, 300),
                              const FlSpot(5, 450),
                              const FlSpot(6, 400),
                            ],
                            isCurved: true,
                            barWidth: 4,
                            color: Colors.blue,
                            belowBarData: BarAreaData(show: false),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Spending Bar Chart
                  const Text(
                    "Your Spending",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 200,
                    child: BarChart(
                      BarChartData(
                        alignment: BarChartAlignment.spaceAround,
                        maxY: 1000,
                        barTouchData: BarTouchData(enabled: false),
                        titlesData: const FlTitlesData(show: true),
                        borderData: FlBorderData(show: false),
                        barGroups: [
                          BarChartGroupData(
                            x: 0,
                            barRods: [
                              BarChartRodData(toY: 600, color: Colors.blue),
                              BarChartRodData(toY: 800, color: Colors.orange),
                            ],
                          ),
                          BarChartGroupData(
                            x: 1,
                            barRods: [
                              BarChartRodData(toY: 700, color:Colors.blue),
                              BarChartRodData(toY: 900, color: Colors.orange),
                            ],
                          ),
                          // Add more BarChartGroupData for other months
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // Bottom Section - Pie Chart and Circular Chart
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  const BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Pie Chart
                  const Text(
                    "Your Spending",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 200,
                    child: PieChart(
                      PieChartData(
                        sections: [
                          PieChartSectionData(
                            value: 40,
                            color: Colors.blue,
                            title: "Shopping",
                          ),
                          PieChartSectionData(
                            value: 23,
                            color: Colors.orange,
                            title: "Food",
                          ),
                          PieChartSectionData(
                            value: 20,
                            color: Colors.pink,
                            title: "Entertain",
                          ),
                          PieChartSectionData(
                            value: 17,
                            color: Colors.green,
                            title: "Hobby",
                          ),
                        ],
                        centerSpaceRadius: 50,
                        borderData: FlBorderData(show: false),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Circular Spending Summary
                  const Text(
                    "Your Spending Breakdown",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 200,
                    child: PieChart(
                      PieChartData(
                        sections: [
                          PieChartSectionData(
                            value: 50,
                            color: Colors.blue,
                            title: "Shopping",
                          ),
                          PieChartSectionData(
                            value: 30,
                            color: Colors.orange,
                            title: "Food",
                          ),
                          PieChartSectionData(
                            value: 20,
                            color: Colors.pink,
                            title: "Entertainment",
                          ),
                        ],
                        centerSpaceRadius: 50,
                        borderData: FlBorderData(show: false),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
