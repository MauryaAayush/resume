import 'package:flutter/material.dart';
import 'package:resume/utils/colors/color.dart';

class Personal_Screen extends StatefulWidget {
  const Personal_Screen({super.key});

  @override
  State<Personal_Screen> createState() => _Personal_ScreenState();
}

class _Personal_ScreenState extends State<Personal_Screen> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return  SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: maincolor,
            toolbarHeight: 80,
           bottom: TabBar(
             tabs: [
               Text(
                 'Personal',
               ),
               Text(
                 'Education',
               ),
               Text(
                 'Skills',
               ),
               Text(
                 'About',
               ),
               Text(
                 'Experience',
               ),
               Text(
                 'projects',

               ),
               Text(
                 'certifications',
               ),
               Text(
                 'languages',
               ),
               Text(
                 'socials',
               ),

           ],),
            title:  Text(
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
                    alignment: Alignment.center,
                    height: height*0.05,
                    width: width*0.3,
                    decoration: BoxDecoration(
                        color: const Color(0xff5C8374),
                        borderRadius: BorderRadius.circular(10)),
                    child:  Text(
                      'Generate Resume',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
             scrollDirection: Axis.vertical,
            child: Column(
              children: [
                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   // child: Row(
                //   //   children: [
                //   //     SizedBox(
                //   //       width: 25,
                //   //     ),
                //   //     GestureDetector(
                //   //       onTap: () {
                //   //         Navigator.of(context).pushReplacementNamed('/home');
                //   //       },
                //   //       child: Text(
                //   //         'Personal',
                //   //         style: TextStyle(
                //   //             color: Colors.white,
                //   //             fontWeight: FontWeight.w500,
                //   //             fontSize: 20),
                //   //       ),
                //   //     ),
                //   //     SizedBox(
                //   //       width: 25,
                //   //     ),
                //   //     GestureDetector(
                //   //       onTap: () {
                //   //         Navigator.of(context).pushReplacementNamed('/education');
                //   //       },
                //   //       child:
                //   //     ),
                //   //     SizedBox(
                //   //       width: 25,
                //   //     ),
                //   //     GestureDetector(
                //   //       onTap: () {
                //   //         Navigator.of(context).pushReplacementNamed('/skill');
                //   //       },
                //   //       child:
                //   //     ),
                //   //     SizedBox(
                //   //       width: 25,
                //   //     ),
                //   //     GestureDetector(
                //   //       onTap: () {
                //   //         Navigator.of(context).pushReplacementNamed('/about');
                //   //
                //   //       },
                //   //       child:
                //   //     ),
                //   //     SizedBox(
                //   //       width: 25,
                //   //     ),
                //   //     GestureDetector(
                //   //       onTap: () {
                //   //         Navigator.of(context).pushReplacementNamed('/experience');
                //   //       },
                //   //       child:
                //   //     ),
                //   //     SizedBox(
                //   //       width: 25,
                //   //     ),
                //   //     GestureDetector(
                //   //       onTap: () {
                //   //         Navigator.of(context).pushReplacementNamed('/project');
                //   //       },
                //   //       child:
                //   //     ),
                //   //     SizedBox(
                //   //       width: 25,
                //   //     ),
                //   //     GestureDetector(
                //   //       onTap: () {
                //   //         Navigator.of(context).pushReplacementNamed('/certification');
                //   //       },
                //   //       child:
                //   //     ),
                //   //     SizedBox(
                //   //       width: 25,
                //   //     ),
                //   //     GestureDetector(
                //   //       onTap: () {
                //   //         Navigator.of(context).pushReplacementNamed('/language');
                //   //       },
                //   //       child:
                //   //     ),
                //   //     SizedBox(
                //   //       width: 25,
                //   //     ),
                //   //     GestureDetector(
                //   //       onTap: () {
                //   //         Navigator.of(context).pushReplacementNamed('/social');
                //   //       },
                //   //       child:
                //   //     )
                //   //   ],
                //   // ),
                // ),
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
                      color: const Color(0xff009788),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Center(child: Text('Save details', style: TextStyle(
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




