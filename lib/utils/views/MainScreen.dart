import 'package:flutter/material.dart';
import 'package:resume/utils/views/PDF_screen.dart';

import '../colors/color.dart';
import '../datas.dart';
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
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

int tabIndex = 0;
ResumeController resumeController = ResumeController();
Education education = Education();

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    resumeController.txtName = TextEditingController(text: 'Aayush Maurya');
    resumeController.txtEmail =
        TextEditingController(text: 'aayush235@gmail.com');
    resumeController.txtPhone = TextEditingController(text: '8604949240');
    resumeController.txtAddress = TextEditingController(
        text: '74, Raghuvir dhaam soc, limbayat, Surat - 394210');

    resumeController.txtUniversityName =
        TextEditingController(text: 'APS school');
    resumeController.txtDegree = TextEditingController(text: 'Bsc');
    resumeController.txtStartYear = TextEditingController(text: '2021');
    resumeController.txtEndYear = TextEditingController(text: '2025');

    return SafeArea(
      child: DefaultTabController(
        length: 9,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: maincolor,
            toolbarHeight: 70,
            title: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Text(
                    'Resume Builder',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 25),
                  ),
                ],
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => PDF(),));
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    alignment: Alignment.center,
                    height: height * 0.05,
                    width: width * 0.3,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 1,
                              spreadRadius: 0.5,
                              offset: Offset(0, 3))
                        ],
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      'Generate Resume',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              )
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              unselectedLabelStyle: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Colors.black38,
              ),
              automaticIndicatorColorAdjustment: false,
              labelStyle: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
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
              ],
            ),
          ),
          body: TabBarView(children: [
            Personal_Screen(),
            EduInfo(),
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
