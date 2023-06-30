
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_app/AddScreen.dart';
import 'package:my_app/UpdateScreen.dart';
import 'package:my_app/services/NotificationService.dart';
import 'package:my_app/viewmodels/product_viewmodel.dart';
import 'package:provider/provider.dart';

import 'DashBoardScreen.dart';
import 'ForgetScreen.dart';
import 'LoginScreen.dart';
import 'NotificationDemo.dart';
import 'RegisterScreen.dart';

import 'UploadImage.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  NotificationService.initialize();

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductViewModel())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: "/notification-demo",
        routes: {
          "/login": (context) => LoginScreen(),
          "/register": (context) => RegisterScreen(),
          "/forget-password": (context) => ForgetScreen(),
          "/dasboard": (context) => DashBoardScreen(),
          "/add-screen":(context)=> AddScreen(),
          "/update-screen":(context)=> UpdateScreen(),
          "/upload-screen":(context)=> UploadImage(),
          "/notification-demo": (context)=>NotificationDemo(),
        },
      ),
    );
  }
}






// import 'package:flutter/material.dart';
// import 'package:my_app/screens/InputDemo.dart';
// import 'package:my_app/screens/LayoutDemo.dart';
// import 'package:my_app/screens/MyPage.dart';
// import 'package:my_app/screens/Page1.dart';
// import 'package:my_app/screens/Page2.dart';
// import 'package:my_app/screens/Page3.dart';
// import 'package:my_app/screens/PageViewDemo.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//         primarySwatch: Colors.blue,
//       ),
//       // home: const MyHomePage(title: 'Flutter Demo Home Page'),
//       // home: Page1(),
//
//       initialRoute: "/page-view-demo",
//
//     //Named navigator
//       routes: {
//         "/page1":(context)=>Page1(),
//         "/page2":(context)=>Page2(),
//         "/page3":(context)=>Page3(),
//         "/page-view-demo":(context)=>PageViewDemo(),
//
//       },
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//
//         title: Text(widget.title),
//       ),
//       body: Center(
//
//         child: Column(
//
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//             // Container(
//             //   height: 100,
//             //   width: 200,
//             //   decoration: BoxDecoration(
//             //     color: Colors.red
//             //   ),
//
//             //   child: Text("Hello"),
//             //   padding: EdgeInsets.only( left: 10,right: 20),
//             //
//             // ),
//
//
//
//             Row(
//               children: [
//                 // Text("I am in row 1 "),
//                 // Text("I am in row 2 "),
//                 // Text("I am in row 3 "),
//               ],
//             ),
//
//             Column(
//               children: [
//                 // Text("I am in column 1"),
//                 // Text("I am in column 2"),
//                 // Text("I am in column 3"),
//               ],
//             ),
//             Row(
//               children: [
//                 Container(
//                   height: 100,
//                   width: 100,
//                   decoration: BoxDecoration( color: Colors.red),
//                 ),
//
//
//
//                 Container(
//                   height: 100,
//                   width: 100,
//                   decoration: BoxDecoration( color: Colors.blue),
//                 ),
//
//               ],
//             ),
//
//             Column(
//               children: [
//                 Container(
//                   height: 100,
//                   width: 300,
//                   decoration: BoxDecoration( color: Colors.yellow),
//                 )
//
//               ],
//             ),
//
//
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
