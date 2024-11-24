// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child:SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade200,
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '0',
                                style: TextStyle(fontSize: 48, color: Colors.teal),
                              ),
                              Text(
                                '0',
                                style: TextStyle(fontSize: 24, color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15,
                        child: CircleAvatar(
                          radius: 6,
                          backgroundColor: Colors.teal,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
              
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.favorite, color: Colors.teal),
                      SizedBox(width: 8),
                      Text(
                        'Heart Pts',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(width: 20),
                      Icon(Icons.directions_walk, color: Colors.blue),
                      SizedBox(width: 8),
                      Text(
                        'Steps',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
              
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text('0', style: TextStyle(color: Colors.black)),
                          Text('Cal', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                      Column(
                        children: [
                          Text('0', style: TextStyle(color: Colors.black)),
                          Text('mi', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                      Column(
                        children: [
                          Text('0', style: TextStyle(color: Colors.black)),
                          Text('Move Min', style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                       
                         Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCard(
                title: "Your daily goals",
                subtitle: "Last 7 days",
                progress: "1/7 Achieved",
                child: _buildDailyGoalsRow(),
              ),
              SizedBox(height: 16),
              _buildCard(
                title: "Your weekly target",
                subtitle: "18–24 Nov",
                progress: "40 of 150",
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LinearProgressIndicator(
                      value: 40 / 150,
                      backgroundColor: Colors.grey[800],
                      color: Colors.green,
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Scoring 150 Heart Points a week can help you live longer, sleep better and boost your mood",
                      style: TextStyle(color: Colors.grey[500], fontSize: 12),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Text(
                "TRENDS",
                style: TextStyle(color: Colors.grey[500], fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              _buildCard(
                title: "Heart Points",
                subtitle: "Last 7 days",
                progress: "0 pts Today",
                child: _buildBarChart(),
              ),
              SizedBox(height: 16),
              _buildCard(
                title: "Steps",
                subtitle: "Last 7 days",
                progress: "145 Today",
                child: _buildBarChart(),
              ),
              SizedBox(height: 16),
              _buildCard(
                title: "Weight",
                subtitle: "2 Sept – 24 Nov",
                progress: "11 st, 7 lb (4 Nov)",
                child: Container(height: 50), // Placeholder for a weight graph.
              ),
              SizedBox(height: 16),
              _buildCard(
                title: "Energy expended",
                subtitle: "Last 7 days",
                progress: "847 Cal Today",
                child: _buildBarChart(),
              ),
            ],
          ),
        ]),
      ),
    )));
  }

  _buildCard({
    required String title,
    required String subtitle,
    required String progress,
    required Widget child,
  }) {
    return Card(
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(
              subtitle,
              style: TextStyle(color: Colors.grey[500], fontSize: 12),
            ),
            SizedBox(height: 8),
            Text(
              progress,
              style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            child,
          ],
        ),
      ),
    );
  }

  _buildDailyGoalsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(7, (index) {
        bool isActive = index == 0;
        return Column(
          children: [
            CircleAvatar(
              backgroundColor: isActive ? Colors.green : Colors.grey[800],
              child: Text(
                "M T W T F S S"[index * 2],
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
          ],
        );
      }),
    );
  }

  _buildBarChart() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(7, (index) {
        double height = index == 0 ? 60 : 40; // Example values for bar heights.
        return Container(
          width: 8,
          height: height,
          color: Colors.blue,
        );
      }),
    );
  }
}
