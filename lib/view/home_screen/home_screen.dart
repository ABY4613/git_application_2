// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:git_application_2/utilits/color_constant.dart';
import 'package:git_application_2/view/home_screen/tabs/browse_screen.dart';
import 'package:git_application_2/view/home_screen/tabs/first_screen.dart';
import 'package:git_application_2/view/home_screen/tabs/journal_screen.dart';
import 'package:git_application_2/view/home_screen/tabs/profile_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<HomeScreen> {
    int selectindex=0;

  List  screens =  [
      FirstScreen(),
       JournalScreen(),
      BrowseScreen(),
      ProfileScreen()  ];

  @override
  Widget build(BuildContext context) {
    
     return Scaffold(
    
     body: screens[selectindex],
     
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
                currentIndex:selectindex,
        onTap: (value) {
       selectindex =value;
        setState(() {
          
        });
        },
        unselectedItemColor: Colors.grey,
        selectedItemColor: ColorConstants.PRIMARYCOLOR,
        backgroundColor: ColorConstants.BLACK,
        items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            color: ColorConstants.GREYSHADE1,),
            label: "Home"
            ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.assignment,
            color: ColorConstants.GREYSHADE1),
            label: "journal"
            ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.list,
            color: ColorConstants.GREYSHADE1),
            label: "Browser"
            ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person,
          color: ColorConstants.GREYSHADE1),
          label: "profile"
          ),
       
      ]
      ),
    );
  }
}