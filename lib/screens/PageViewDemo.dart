import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_app/screens/TabBarDemo.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {

  int idx =0;
  PageController pageController=PageController();



  @override
  Widget build(BuildContext context) {
    var format =DateFormat.yMd('ar');
    var dateString =format.format(DateTime.now());

    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: pageController,
          children: [
            TabBarDemo(),

            Column(
              children: [
                Text("Search",style: TextStyle(fontSize: 40),),
                Text(DateTime.now().toString()),
                Text(format.format(DateTime.now().toString() as DateTime)),
                Text(dateString)
              ],
            ),
            Text("Add",style: TextStyle(fontSize: 40),),
            Text("Account",style: TextStyle(fontSize: 40),),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
       selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: idx,

        onTap: (val){
         setState(() {
           idx=val;
         });

         pageController.jumpToPage(val);
        },


        items:[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.add),label: "Add"),
        BottomNavigationBarItem(icon: Icon(Icons.verified),label: "Users"),

      ],

      ),
    );
  }
}
