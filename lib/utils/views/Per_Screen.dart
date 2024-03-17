import 'package:flutter/material.dart';
import 'package:resume/utils/datas.dart';

import '../Components/container.dart';
import 'MainScreen.dart';

class Personal_Screen extends StatefulWidget {
  const Personal_Screen({super.key});

  @override
  State<Personal_Screen> createState() => _Personal_ScreenState();
}

class _Personal_ScreenState extends State<Personal_Screen> {
  @override
  Widget build(BuildContext context) {

    return  Column(
      children: [

        const SizedBox(
          height: 30,
        ),
        textFieldBox(controller: resumeController.txtName!,hintText: 'Name'),

        const SizedBox(
          height: 30,
        ),

        textFieldBox(controller: resumeController.txtEmail!,hintText: 'Name'),

        const SizedBox(
          height: 30,
        ),

        textFieldBox(controller: resumeController.txtPhone!,hintText: 'Name'),

        const SizedBox(
          height: 30,
        ),

        textFieldBox(controller: resumeController.txtAddress!,hintText: 'Name'),

        const SizedBox(
          height: 30,
        ),

        const SizedBox(height: 30,),


        Container(
          height: 60,
          width: 250,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10)
          ),
          child: const Center(
            child: Text('Save details', style: TextStyle(
              color: Colors.white,
              fontSize: 23,
              fontWeight: FontWeight.w400,
            ),
            ),
          ),
        ),
      ],
    );
  }
}




