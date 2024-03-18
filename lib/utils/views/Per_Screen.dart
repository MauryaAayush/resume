import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume/utils/datas.dart';

import '../Components/container.dart';
import 'MainScreen.dart';

class Personal_Screen extends StatefulWidget {
  const Personal_Screen({super.key});

  @override
  State<Personal_Screen> createState() => _Personal_ScreenState();
}

ResumeData resumeData = ResumeData();
File? imgPath;

class _Personal_ScreenState extends State<Personal_Screen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: GestureDetector(
            onTap: () async {
              ImagePicker image = ImagePicker();
              XFile? img = await image.pickImage(source: ImageSource.camera);
              setState(() {
                imgPath = File(img!.path);
              });
            },
            child: CircleAvatar(
              radius: 70,
              backgroundColor: Colors.grey,
              backgroundImage: (imgPath != null) ? FileImage(imgPath!) : null,
            ),
          ),
        ),

        textFieldBox(controller: resumeController.txtName!, hintText: 'Name'),
        const SizedBox(
          height: 30,
        ),
        textFieldBox(controller: resumeController.txtEmail!, hintText: 'Name'),
        const SizedBox(
          height: 30,
        ),
        textFieldBox(controller: resumeController.txtPhone!, hintText: 'Name'),
        const SizedBox(
          height: 30,
        ),
        textFieldBox(
            controller: resumeController.txtAddress!, hintText: 'Name'),
        const SizedBox(
          height: 30,
        ),
        const SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              resumeData.name = resumeController.txtName!.text;
              resumeData.email = resumeController.txtEmail!.text;
              resumeData.phone = resumeController.txtPhone!.text;
              resumeData.address = resumeController.txtAddress!.text;
            });

          },
          child: Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: Text(
                'Save details',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
