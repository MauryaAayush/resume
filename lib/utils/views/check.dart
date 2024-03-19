import 'package:flutter/material.dart';


class Mycheck extends StatefulWidget {
  const Mycheck({super.key});

  @override
  State<Mycheck> createState() => _MycheckState();
}

class _MycheckState extends State<Mycheck> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Noel Taylor Portfolio'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  'NOEL TAYLOR',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'GRAPHIC & WEB DESIGNER',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(height: 10),
                        Text('+1-718-310-5588'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(height: 10),
                        Text('+1-313-381-8167'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'www.yourwebsite.com',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),
                Text(
                  'yourinfo@email.com',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),
                Text(
                  '769 Prudence Street\nLincoln Park, MI 48146',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        jobTitles[index],
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        jobDetails[index],
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}



List<String> jobTitles = [
  'WEB DESIGNER',
  'GRAPHIC DESIGNER',
  'MARKETING MANAGER',
  'BACHELOR DEGREE GRADUATE',
];

List<String> jobDetails = [
  '2020 - Present\nCreative Agency/Chicago',
  '2015-2020\nCreative Market / Chicago',
  '2013-2015\nManufacturing Agency / NJ',
  '2007 - 2010\nUniversity of Chicago',
];