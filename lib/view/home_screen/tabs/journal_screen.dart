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
   backgroundColor: Color.fromRGBO(53, 52, 52, 1),
      appBar: AppBar(
        backgroundColor: ColorConstants.BLACK,
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
            secIcon: Icon(Icons.directions_walk_rounded,color: Colors.blueAccent,),
              title: "Evening Bike Ride",
              subtitle: "Last 7 days",
              timeing: "Fri 3:90 pm",lastIcon:         Icon(Icons.crisis_alert_outlined,color: Colors.green,) ,
              progress: "0 pts Today",
              topIcon: Icon(Icons.motorcycle,color: Colors.grey,),
              child: Text("data"),
              // title1: "",
              topTime: "6:09 pm"
              ),
              Divider(color: Colors.grey,),
             _buildCard(
            secIcon: Icon(Icons.directions_walk_rounded,color: Colors.blueAccent,),
              title: "Evening Bike Ride",
              subtitle: "Last 7 days",
              timeing: "Fri 3:90 pm",lastIcon:         Icon(Icons.crisis_alert_outlined,color: Colors.green,) ,
              progress: "0 pts Today",
              topIcon: Icon(Icons.motorcycle,color: Colors.grey,),
              child: Text("data"),
              // title1: "",
              topTime: "6:09 pm"
              ),
              Divider(color: Colors.grey,),
            ],

      )
    );
  }
   _buildCard({
    required String title,
    required Icon topIcon,
    required Icon secIcon,
    required Icon lastIcon,
    required String timeing,
    required String topTime,
    required String subtitle,
    required String progress,
    required Widget child,
    // required String title1,
     
    
  } 
  ) {
    return Container(
      width: double.infinity,
        padding: const EdgeInsets.all(16.0),

      decoration: BoxDecoration(),
      // color: Colors.grey[900],
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(12),
      // ),
      
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  topIcon,
                  SizedBox(width: 5,),
                  // Text(
                  //   title,
                  //   style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  // ), 
                   Text(
                    topTime,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Text(
                title,
                style: TextStyle(color: Colors.grey[500], fontSize: 12),
              ), Text(
                subtitle,
                style: TextStyle(color: Colors.grey[500], fontSize: 8),
              ),
              SizedBox(height: 8),
              // Text(
              //   progress,
              //   style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              // ),
              SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Text(
                progress,
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ) ,  
              Text(
                timeing,
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
     lastIcon
            ],)
            ],
          ),
                  CircleAvatar(backgroundColor: const Color.fromARGB(255, 54, 70, 83),child: secIcon)

        ],
      ),
    );
}
}