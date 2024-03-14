import 'package:flutter/material.dart';

class About_Screen extends StatefulWidget {
  const About_Screen({super.key});

  @override
  State<About_Screen> createState() => _About_ScreenState();
}

class _About_ScreenState extends State<About_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff009788),
        title: const Text(
          'Resume Builder',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {
                setState(() {});
              },
              child: Container(
                height: 60,
                width: 190,
                decoration: BoxDecoration(
                    color: const Color(0xff4CB6AC),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                      'Generate Resume',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(color: Color(0xff009788)),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/home');
                      },
                      child: Text(
                        'Personal',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/education');
                      },
                      child: Text(
                        'Education',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/skill');
                      },
                      child: Text(
                        'Skills',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/about');

                      },
                      child: Text(
                        'About',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/experience');
                      },
                      child: Text(
                        'Experience',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/project');
                      },
                      child: Text(
                        'projects',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/certification');
                      },
                      child: Text(
                        'certifications',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/language');
                      },
                      child: Text(
                        'languages',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/social');
                      },
                      child: Text(
                        'socials',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 160,top: 30,left: 10),
                  child: Text('About me',style: TextStyle(
                      color: Colors.black,
                      fontSize: 25
                  ),),
                ),
                InkWell(
                  onTap: () {

                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: const Color(0xff4DB5AC),
                          borderRadius: BorderRadius.circular(7)
                      ),
                      child: const Center(
                        child: Text('Save details',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
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
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: TextFormField(
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffDFDFDF),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  contentPadding:
                  const EdgeInsets.symmetric(vertical: 110, horizontal: 20),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            const Divider(),
            const Text('Suggestions for you',style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20
            ),),
            const SizedBox(height: 10,),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: TextFormField(
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffDFDFDF),
                    border:  const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2.0, // Adjust the border width here
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 3,  // Adjust the border width here
                        ),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20)),
                    contentPadding:
                    const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
                    label: const Text('It can be in school, college, offices or even while giving interviews. Although it may also be done in writing, '
                        'it is frequently carried out in the form of a speech or presentation before the start of a meeting or event.',style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20
                    ),)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10,top: 20),
              child: TextFormField(
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffDFDFDF),
                  border:  const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2.0, // Adjust the border width here
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 3,  // Adjust the border width here
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  contentPadding:
                  const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
                  // //label: const Text('It can be in school, college, offices or even while giving interviews. Although it may also be done in writing, '
                  //     'it is frequently carried out in the form of a speech or presentation before the start of a meeting or event.',style: TextStyle(
                  //     color: Colors.black54,
                  //     fontSize: 20
                  // ),)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10,top: 20),
              child: TextFormField(
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffDFDFDF),
                  border:  const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2.0, // Adjust the border width here
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 3,  // Adjust the border width here
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  contentPadding:
                  const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
                  // label: const Text('It can be in school, college, offices or even while giving interviews. Although it may also be done in writing, '
                  //     'it is frequently carried out in the form of a speech or presentation before the start of a meeting or event.',style: TextStyle(
                  //     color: Colors.black54,
                  //     fontSize: 20
                  // ),)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
