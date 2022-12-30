import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  redi(color: Colors.red, Flex: 2),
                  redi(color: Colors.blue, Flex: 3),
                  redi(color: Colors.green),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              redi(color: Colors.pinkAccent, Flex: 3),
                              redi(color: Colors.cyan),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              redi(color: Colors.purple),
                              redi(color: Colors.amber, Flex: 3),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  redi(color: Colors.black),
                  redi(color: Colors.brown),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget redi({Flex, color}) {
  return Expanded(
      flex: Flex ?? 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: color,
        ),
      ));
}
