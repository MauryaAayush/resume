import 'package:flutter/material.dart';

class Social_Screen extends StatefulWidget {
  const Social_Screen({super.key});

  @override
  State<Social_Screen> createState() => _Social_ScreenState();
}

class _Social_ScreenState extends State<Social_Screen> {
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
            const SizedBox(
              height: 30,
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
                  hintText: 'instagram link ',
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  //contentPadding: const EdgeInsets.symmetric(vertical: 65, horizontal: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
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
                  hintText: 'twitter link',
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  //contentPadding: const EdgeInsets.symmetric(vertical: 65, horizontal: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
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
                  hintText: 'github link',
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  //contentPadding: const EdgeInsets.symmetric(vertical: 65, horizontal: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
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
                  hintText: 'linkedin link',
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  //contentPadding: const EdgeInsets.symmetric(vertical: 65, horizontal: 20),
                ),
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              height: 60,
              width: 200,
              decoration: BoxDecoration(
                  color: const Color(0xff4CB6AC),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: const Center(
                child: Text('Save details',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 23,
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
