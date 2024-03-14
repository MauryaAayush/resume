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
      body: SingleChildScrollView(
        child: Column(
          children: [

            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 160,top: 10,left: 10),
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
