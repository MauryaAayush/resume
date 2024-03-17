import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/utils/colors/color.dart';

class About_Screen extends StatefulWidget {
  const About_Screen({super.key});

  @override
  State<About_Screen> createState() => _About_ScreenState();
}

TextEditingController? txtObjective;

class _About_ScreenState extends State<About_Screen> {

   // TextEditingController txtObjective = TextEditingController();

  @override
  Widget build(BuildContext context) {

    txtObjective = TextEditingController(text: selectedObjective);
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 185,top: 30,left: 10),
                  child: Text('About me',style: TextStyle(
                      color: Colors.black,
                      fontSize: 21.5
                  ),),
                ),
                InkWell(
                  onTap: () {

                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 135,
                      decoration: BoxDecoration(
                          color: maincolor,
                          borderRadius: BorderRadius.circular(7)
                      ),
                      child: const Center(
                        child: Text('Save details',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.5,
                              fontWeight: FontWeight.w500
                          ),),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            const Divider(
              thickness: 1.5,
            ),
            const SizedBox(
              height: 10,
            ),

            TextFormField(
              controller: txtObjective,
              minLines: 1,
              maxLines: 9,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xffDFDFDF),

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.transparent
                  ),
                    borderRadius: BorderRadius.circular(20)

                ),
                focusedBorder: OutlineInputBorder(
                    borderSide:  BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),

                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),

              ),
            ),


            const SizedBox(height: 10,),
            const Divider(
              color: Colors.grey,
            ),
            const Text('Suggestions for you',style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20
            ),),
            const SizedBox(height: 10,),
            const Divider(
              color: Colors.grey,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [

                  SizedBox(
                    height: 20,
                  ),
                  ...List.generate(
                    Objectives.length,
                        (index) => InkWell(
                      onTap: () {
                        setState(() {
                          selectedObjective = Objectives[index];
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 130,
                        width: 450,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                            border: Border.all(width: 2, color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.center,
                        child: Text(
                          Objectives[index],
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

String selectedObjective = 'Demo Txt';

List<String> Objectives = [
'I am a hard working, honest individual. I am a good timekeeper, always willing to learn new skills. I am friendly, helpful and polite, have a good sense of humour. I am able to work independently in busy environments and also within a team setting.',
  'I am a punctual and motivated individual who is able to work in a busy environment and produce high standards of work. I am an excellent team worker and am able to take instructions from all levels and build up good working relationships with all colleagues.',
  'I am an enthusiastic, self-motivated, reliable, responsible and hard working person. I am a mature team worker and adaptable to all challenging situations. I am able to work well both in a team environment as well as using own initiative.',
  'I am a dedicated, organized and methodical individual. I have good interpersonal skills, am an excellent team worker and am keen and very willing to learn and develop new skills. I am reliable and dependable and often seek new responsibilities',
  'I’m a nice fun and friendly person, I’m honest and punctual, I work well in a team but also on my own as I like to set myself goals which I will achieve, I have good listening and communication skills. I have a creative mind and am always up for new challenges.',
];



