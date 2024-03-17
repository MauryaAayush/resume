import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/utils/colors/color.dart';

class Language_Screen extends StatefulWidget {
  const Language_Screen({Key? key}) : super(key: key);

  @override
  State<Language_Screen> createState() => _Language_ScreenState();
}

class _Language_ScreenState extends State<Language_Screen> {
  String? selectedLanguage;
  List<String> languageList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                width: 420,
                decoration: BoxDecoration(
                  color: Color(0xffE0E0E0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DropdownButton<String>(
                        value: selectedLanguage,
                        items: [
                          DropdownMenuItem(
                            child: Text('English'),
                            value: 'English',
                          ),
                          DropdownMenuItem(
                            child: Text('Hindi'),
                            value: 'Hindi',
                          ),
                          DropdownMenuItem(
                            child: Text('Gujarati'),
                            value: 'Gujarati',
                          ),
                          DropdownMenuItem(
                            child: Text('Tamil'),
                            value: 'Tamil',
                          ),
                          DropdownMenuItem(
                            child: Text('Punjabi'),
                            value: 'Punjabi',
                          ),

                          // Add more languages as needed
                        ],
                        onChanged: (value) {
                          setState(() {
                            selectedLanguage = value;
                          });
                        },
                      ),
                      GestureDetector(
                        onTap: () {
                          if (selectedLanguage != null) {
                            setState(() {
                              languageList.add(selectedLanguage!);
                            });
                          }
                        },
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: maincolor,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Icon(Icons.add, size: 30,),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: languageList.map((language) {
                  return Chip(
                    label: Text(language),
                    deleteIcon: Icon(Icons.delete),
                    onDeleted: () {
                      setState(() {
                        languageList.remove(language);
                      });
                    },
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
