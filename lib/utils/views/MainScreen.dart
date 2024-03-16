import 'package:flutter/material.dart';

import '../colors/color.dart';
import 'About_Screen.dart';
import 'Certificate_Screen.dart';
import 'Edu_Screen.dart';
import 'Experience_Screen.dart';
import 'Language_Screen.dart';
import 'Per_Screen.dart';
import 'Project_Screen.dart';
import 'Skill_Screen.dart';
import 'Social_Sreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: DefaultTabController(
        length: 9,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: maincolor,
            toolbarHeight: 30,
            title: Text(
              'Resume Builder',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 25),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: InkWell(
                  onTap: () {
                    setState(() {});
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: height * 0.05,
                    width: width * 0.3,
                    decoration: BoxDecoration(
                        color:  Colors.redAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Generate Resume',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              )
            ],
            bottom: TabBar(
              automaticIndicatorColorAdjustment: false,
              isScrollable: true,
              tabs: [
                Tab(text: 'Personal'),
                Tab(text: 'Education'),
                Tab(text: 'Skills'),
                Tab(text: 'About'),
                Tab(text: 'Experience'),
                Tab(text: 'Projects'),
                Tab(text: 'Certifications'),
                Tab(text: 'Languages'),
                Tab(text: 'Socials'),

              ],),
          ),
          body: TabBarView(
              children: [
                Personal_Screen(),
                Education_Screen(),
                Skill_screen(),
                About_Screen(),
                Experience_Screen(),
                Project_Screen(),
                Certificate_Screen(),
                Language_Screen(),
                Social_Screen(),

              ]),
        ),
      ),
    );
  }
}
