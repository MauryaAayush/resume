import 'package:flutter/material.dart';

class Personal_Screen extends StatefulWidget {
  const Personal_Screen({super.key});

  @override
  State<Personal_Screen> createState() => _Personal_ScreenState();
}

class _Personal_ScreenState extends State<Personal_Screen> {
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: DefaultTabController(
        length: 9,
        child: Scaffold(

          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [

                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffDFDFDF),
                      hintText: 'Name',
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20)),
                      //z  contentPadding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffDFDFDF),
                      hintText: 'Email',
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(20)),
                      //contentPadding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffDFDFDF),
                      hintText: 'Mobile number',
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
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffDFDFDF),
                      hintText: 'location',
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
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffDFDFDF),
                      hintText: 'job title',
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
            ),
          ),
        ),
      ),
    );
  }
}




