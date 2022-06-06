import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

// void main() {
//   runApp(MaterialApp(
//     /*TuanTeo: SafeArea là vùng hiển thị của màn hình (không fullscreen) */
//     home: SafeArea(
//       /*TuanTeo: Scaffold là khung màn hình, các child bên trong được áp dụng Material Design */
//       child: Scaffold(
//           appBar: AppBar(
//               backgroundColor: Colors.pink, // set màu background cho app bar
//               title: Text('Title appbar') // title của app bar
//           ),
//           body: Center(
//               child: Text('Hello World')
//           )
//       ),
//     ),
//   ));
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: "App title",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AppBar Title"),
        ),
        body: Center(
          child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}



