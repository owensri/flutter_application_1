//import 'package:demoproject/calculator_page.dart';
//import 'package:demoproject/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_stateful_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyStatefulWidget(),);
  }
}

class GreetingWidget extends StatelessWidget {
  final String name;
  const GreetingWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Demo App'),
          backgroundColor: Colors.red,
          ),
        body: Center(child: Text('Hello, $name')));
  }
}

// class DemoPage extends StatelessWidget {
//   const DemoPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }
