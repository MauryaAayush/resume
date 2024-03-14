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
              color: Colors.blue,
          width: double.infinity,
          height: double.infinity,
          child: ContainedTabBarView(
            tabBarViewProperties: TabBarViewProperties(

            ),
            tabBarProperties: TabBarProperties(
              position: TabBarPosition.top
            ),
            tabs: [
            Text('First',style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),),
            Text('Second',style: TextStyle(
                color: Colors.white,
                fontSize: 20
            ),),
            Text('third',style: TextStyle(
                color: Colors.white,
                fontSize: 20
            ),),



          ], views: [
            Container(
              color: Colors.cyan,
            ),
            Container(
              color: Colors.teal,
            ),
            Container(
              color: Colors.green,
            ),

          ],
          onChange: (index) => print(index),
          )  ,
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
