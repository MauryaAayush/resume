import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

class Check_Tabbar extends StatefulWidget {
  const Check_Tabbar({super.key});

  @override
  State<Check_Tabbar> createState() => _Check_TabbarState();
}

class _Check_TabbarState extends State<Check_Tabbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.blue,
          width: double.infinity,
          height: 300,
          child: ContainedTabBarView(
            tabs: [
              Text('First'),
              Text('Second'),
              Text('Second'),
              Text('Second'),
              Text('Second'),
              Text('Second'),
              Text('Second'),
              Text('Second'),
              Text('Second'),

            ],
            views: [
              Container(color: Colors.red),
              Container(color: Colors.green),
              Container(color: Colors.green),
              Container(color: Colors.green),
              Container(color: Colors.green),
              Container(color: Colors.green),
              Container(color: Colors.green),
              Container(color: Colors.green),
              Container(color: Colors.green)
            ],
            onChange: (index) => print(index),
          ),
        ),
      ),

    );

  }
}








// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyTabbedPage(),
//     );
//   }
// }
//
// class MyTabbedPage extends StatefulWidget {
//   @override
//   _MyTabbedPageState createState() => _MyTabbedPageState();
// }
//
// class _MyTabbedPageState extends State<MyTabbedPage> with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(vsync: this, length: 3); // Change the length according to your requirement
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Tabbed Page'),
//         bottom: TabBar(
//           controller: _tabController,
//           tabs: [
//             Tab(icon: Icon(Icons.directions_car), text: 'Tab 1'),
//             Tab(icon: Icon(Icons.directions_transit), text: 'Tab 2'),
//             Tab(icon: Icon(Icons.directions_bike), text: 'Tab 3'),
//           ],
//         ),
//       ),
//       body: TabBarView(
//         controller: _tabController,
//
//         children: [
//           Center(
//             child: Text('Tab 1 content'),
//           ),
//           Center(
//             child: Text('Tab 2 content'),
//           ),
//           Center(
//             child: Text('Tab 3 content'),
//           ),
//         ],
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }
// }
