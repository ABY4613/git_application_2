// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:git_application_2/utilits/color_constant.dart';

class JournalScreen extends StatefulWidget {
  const JournalScreen({super.key});

  @override
  State<JournalScreen> createState() => _JournalScreenState();
}

class _JournalScreenState extends State<JournalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
        title: Text('Journal', style: TextStyle(fontSize: 40)),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
             
            },
          ),
          CircleAvatar(
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Column(
        children: [
          _buildCard(
            
              title: "Heart Points",
              subtitle: "Last 7 days",
              progress: "0 pts Today",
              child: Text("data"),
              title1: ""
              ),
             _buildCard(
              
              title: "Heart Points",
              subtitle: "Last 7 days",
              progress: "0 pts Today",
              child: Text("data"),
              title1: ""
             
            )],

      )
    );
  }
   _buildCard({
    required String title,
    required String subtitle,
    required String progress,
    required Widget child,
    required String title1,
     
    
  } 
  ) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        
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
      ),
    );
}
}