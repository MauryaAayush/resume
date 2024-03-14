import 'package:flutter/material.dart';

class Education_Screen extends StatefulWidget {
  const Education_Screen({super.key});

  @override
  State<Education_Screen> createState() => _Education_ScreenState();
}

class _Education_ScreenState extends State<Education_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            TextFormField(
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xffDFDFDF),
                hintText: 'institute name',
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                // contentPadding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10,left: 10),
                    child: TextFormField(
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffDFDFDF),
                        hintText: 'Start date',
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20)),
                        // contentPadding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: TextFormField(
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffDFDFDF),
                        hintText: 'End date',
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20)),
                        // contentPadding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            TextFormField(
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xffDFDFDF),
                hintText: 'Grade',
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                // contentPadding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              ),
            ),
            SizedBox(height: 30,),
            TextFormField(
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xffDFDFDF),
                hintText: 'Enter description here',
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                contentPadding: const EdgeInsets.symmetric(vertical: 65, horizontal: 20),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
                  child: Container(
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Color(0xff009788),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text('Save details',style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w400,
                    ),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Container(
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Color(0xff2196F3),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text('Discard',style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w400,
                    ),)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
