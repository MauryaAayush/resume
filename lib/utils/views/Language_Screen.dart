import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/utils/colors/color.dart';

class Language_Screen extends StatefulWidget {
  const Language_Screen({super.key});

  @override
  State<Language_Screen> createState() => _Language_ScreenState();
}

class _Language_ScreenState extends State<Language_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(

                height: 70,
                width: 420,
                decoration: BoxDecoration(
                    color:  Color(0xffE0E0E0),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                       Text('English',style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400
                      ),),
                       SizedBox(width: 35,),
                       Icon(Icons.keyboard_arrow_down_outlined,size: 26,),
                       SizedBox(width: 200,),
                      Container(
                        height: 45,
                        width: 45,
                        decoration:  BoxDecoration(
                            color: maincolor,
                          borderRadius: BorderRadius.all(Radius.circular(5))
                        ),
                        child:  Icon(Icons.add,size: 30,),
                      ),
                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  setState(() {

                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: maincolor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Add education',style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),),

                    Icon(Icons.add,size: 30,)
                  ],
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}


