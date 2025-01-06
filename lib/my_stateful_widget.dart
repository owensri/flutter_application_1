import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("StatefulWidget"),
          backgroundColor: Colors.red,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter = $counter",
                style: const TextStyle(fontSize: 22, color: Colors.green)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                    child: const Text("+ เพิ่ม")),
                const SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter--;
                        if (counter <= 0) {
                          counter = 0;
                        }
                      });
                    },
                    child: const Text("- ลด")),
                const SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter = 0;
                      });
                    },
                    child: const Text("Reset"))
              ],
            )
          ],
        )));
  }
}
