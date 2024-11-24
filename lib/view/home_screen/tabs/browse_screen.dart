// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:git_application_2/utilits/color_constant.dart';
import 'package:git_application_2/view/global_widget/custom_textfield_with_shadow.dart';

class BrowseScreen extends StatefulWidget {
  @override
  State<BrowseScreen> createState() => _HealthDataScreenState();
}

class _HealthDataScreenState extends State<BrowseScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.BLACK,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: CustomTextFieldWithShadow(
             
            ),
          ),
          backgroundColor: ColorConstants.BLACK,
          elevation: 0,
        ),
        body: ListView(
          children: [
            _buildListTile('Activity',ColorConstants.WHITE, Icons.directions_run, Colors.teal),
            _buildListTile('Body measurements',ColorConstants.WHITE, Icons.straighten, Colors.blue),
            _buildListTile('Vitals', ColorConstants.WHITE,Icons.monitor_heart, Colors.red),
            _buildListTile('Nutrition',ColorConstants.WHITE, Icons.restaurant, Colors.orange),
            _buildListTile('Sleep', ColorConstants.WHITE,Icons.bedtime, Colors.purple),
            _buildListTile('Cycle tracking',ColorConstants.WHITE, Icons.fiber_manual_record, Colors.pink),
          ],
        ),
      
      ),
    );
  }

Widget _buildListTile(String title, Color textColor, IconData icon, Color iconColor) {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: iconColor.withOpacity(0.1),
      child: Icon(
        icon,
        color: iconColor,
      ),
    ),
    title: Text(
      title,
      style: TextStyle(
        color: textColor, // Dynamic text color
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
    ),
    onTap: () {
      // Action when tapped
      print('$title tapped!');
    },
  );
}
}