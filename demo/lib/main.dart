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
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.pink,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    color: Colors.amber,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    color: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    color: Colors.blue,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.amber,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    color: Colors.purpleAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    color: Colors.purple,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    color: Colors.deepOrange,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.pink,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.black,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    color: Colors.cyan,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    color: Colors.amberAccent,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    color: Colors.blueAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    color: Colors.blueGrey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.amber,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.orange,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.pink,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    color: Colors.red,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    color: Colors.blueAccent,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  child: Container(
                                                color: Colors.black54,
                                              )),
                                              Expanded(
                                                  child: Container(
                                                color: Colors.cyanAccent,
                                              )),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  child: Container(
                                                color: Colors.green,
                                              )),
                                              Expanded(
                                                  child: Container(
                                                color: Colors.lightBlueAccent,
                                              )),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  child: Container(
                                                color: Colors.lime,
                                              )),
                                              Expanded(
                                                  child: Container(
                                                color: Colors.tealAccent,
                                              )),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
