import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/utils/colors/color.dart';
import 'package:resume/utils/datas.dart';

class Skill_screen extends StatefulWidget {
  const Skill_screen({Key? key}) : super(key: key);

  @override
  State<Skill_screen> createState() => _Skill_screenState();
}

class _Skill_screenState extends State<Skill_screen> {
  List<String> skills = [];
  final TextEditingController txtSkills = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: txtSkills,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffDFDFDF),
                  hintText: 'Enter a single skill here',
                  labelText: 'Skills',
                  labelStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black38,
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Container(
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                        color: maincolor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        onPressed: () {
                          String newSkill = txtSkills.text.trim();
                          if (newSkill.isNotEmpty && !skills.contains(newSkill)) {
                            setState(() {
                              skills.add(newSkill);
                              txtSkills.clear();
                            });
                          }
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListView.builder(
                  itemCount: skills.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(skills[index]),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          setState(() {
                            skills.removeAt(index);
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 180, top: 30),
                child: Text(
                  'Suggestions for you',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Divider(
                  color: Colors.black87,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _addSkill('Communication');
                    },
                    child: Text(
                      'Communication',
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                  SizedBox(width: 30),
                  ElevatedButton(
                    onPressed: () {
                      _addSkill('Problem Solving');
                    },
                    child: Text(
                      'Problem Solving',
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _addSkill('Creativity');
                    },
                    child: Text(
                      'Creativity',
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                  SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () {
                      _addSkill('Photoshop');
                    },
                    child: Text(
                      'Photoshop',
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                  SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () {
                      _addSkill('Excel');
                    },
                    child: Text(
                      'Excel',
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _addSkill(String skillName) {
    if (!skills.contains(skillName)) {
      setState(() {
        skills.add(skillName);
      });
    }
  }
}
