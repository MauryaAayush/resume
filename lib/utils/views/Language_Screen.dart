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
        child: Column(
          children: [

            const SizedBox(
              height: 20,
            ),
            Container(
              height: 70,
              width: 420,
              decoration: BoxDecoration(
                  color: const Color(0xffE0E0E0),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const Text('English',style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                    ),),
                    const SizedBox(width: 35,),
                    const Icon(Icons.keyboard_arrow_down_outlined,size: 26,),
                    const SizedBox(width: 200,),
                    Container(
                      height: 50,
                      width: 50,
                      decoration:  BoxDecoration(
                          color: maincolor
                      ),
                      child: const Icon(Icons.add,size: 30,),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
