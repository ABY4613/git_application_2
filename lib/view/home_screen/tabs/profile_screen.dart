// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:git_application_2/utilits/color_constant.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.BLACK,
      appBar: AppBar(
        title: Text('Profile', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.black),
            onPressed: () {
           
            },
          ),
          CircleAvatar(
            backgroundImage: NetworkImage("https://images.pexels.com/photos/10583179/pexels-photo-10583179.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"), 
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Activity goals', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
            color: ColorConstants.WHITE)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildDropdownField('Steps', '5,000'),
                _buildDropdownField('Heart Points', '20'),
              ],
            ),
            SizedBox(height: 20),
            Text('Bedtime schedule', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(''),
                Switch(value: false, onChanged: (value) {}),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildDropdownField('Get in bed', '11:00 PM'),
                _buildDropdownField('Wake up', '7:00 AM'),
              ],
            ),
            SizedBox(height: 20),
            Text('About you', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildDropdownField('Gender', 'Female'),
                _buildDropdownField('Birthday', 'Sep 6, 2003'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildDropdownField('Weight', ''),
                _buildDropdownField('Height', ''),
              ],
            ),
          ],
        ),
      ),
    
    );
  }

  Widget _buildDropdownField(String label, String value) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(4.0),
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: TextStyle(color: Colors.grey)),
            DropdownButton<String>(
              value: value,
              icon: Icon(Icons.arrow_drop_down),
              underline: SizedBox(),
              items: <String>[value].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
            
              },
            ),
          ],
        ),
      ),
    );
  }
}