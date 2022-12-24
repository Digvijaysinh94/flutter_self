import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'calc',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const myhomepage(),
    );
  }
}

class myhomepage extends StatefulWidget {
  const myhomepage({super.key});

  @override
  State<myhomepage> createState() => _myhomepageState();
}

class _myhomepageState extends State<myhomepage> {
  late int firstnum;
  late int secondnum;
  String texttodisplay = "";
  late String res;
  late String op;

  void btnclicked(String btnvalue) {
    if (btnvalue == 'C') {
      res = "";
      texttodisplay = "";
      firstnum = 0;
      secondnum = 0;
    } else if (btnvalue == "+" ||
        btnvalue == "x" ||
        btnvalue == "-" ||
        btnvalue == "/") {
      firstnum = int.parse(texttodisplay);
      res = "";
      op = btnvalue;
    } else if (btnvalue == "=") {
      secondnum = int.parse(texttodisplay);
      if (op == "+") {
        res = (firstnum + secondnum).toString();
      }
      if (op == "X") {
        res = (firstnum * secondnum).toString();
      }
      if (op == "-") {
        res = (firstnum - secondnum).toString();
      }
      if (op == "/") {
        res = (firstnum / secondnum).toString();
      }
    } else {
      res = int.parse(texttodisplay + btnvalue).toString();
    }
    setState(() {
      texttodisplay = res;
    });
  }

  Widget button(String btnvalue) {
    return Expanded(
        // child: Padding(
        // padding: EdgeInsets.all(25.0),
        child: OutlinedButton(
      onPressed: () => btnclicked(btnvalue),
      child: Text(
        "$btnvalue",
        style: TextStyle(
          fontSize: 20.0,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
        ),
      ),
      // ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('calc'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: Container(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '$texttodisplay',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ))),
            Row(
              children: [button("9"), button("8"), button("7"), button("+")],
            ),
            Row(
              children: [button("6"), button("5"), button("4"), button("-")],
            ),
            Row(
              children: [button("3"), button("2"), button("1"), button("x")],
            ),
            Row(
              children: [button("C"), button("0"), button("="), button("/ ")],
            )
          ],
        ),
      ),
    );
  }
}
