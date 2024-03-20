import 'package:flutter/material.dart';
import 'package:resume/utils/colors/color.dart';

import '../Components/container.dart';

class EduInfo extends StatefulWidget {
  const EduInfo({Key? key}) : super(key: key);

  @override
  _EduInfoState createState() => _EduInfoState();
}

class _EduInfoState extends State<EduInfo> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10),
      child: IndexedStack(
        index: _selectedIndex,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = 1; // Navigate to EduDetails page
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: maincolor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Add education',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(Icons.add, size: 30, color: Colors.white),
                ],
              ),
            ),
          ),
          EduDetails(),
        ],
      ),
    );
  }
}


