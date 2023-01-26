// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

void main() {
  runApp( BasketballPoints());
}

class BasketballPoints extends StatefulWidget {
  BasketballPoints({super.key});

  @override
  State<BasketballPoints> createState() => _BasketballPointsState();
}

class _BasketballPointsState extends State<BasketballPoints> {
int counter =0;

int counter2=0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          centerTitle: false,
          title: const Text('Points counter '),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 80),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$counter',
                        style: const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            setState(() {
                              counter++;
                          }); print(counter);},
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {setState(() {
                            counter+=2;
                          }); print(counter); },
                          child: const Text(
                            'Add 2 Points',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {setState(() {
                            counter+=3;
                          }); print(counter);},
                          child: const Text(
                            'Add 3 Points',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                    ],
                  ),
                   Container(
                    height: 500,
                    child: const VerticalDivider(
                      color: Colors.grey,
                      thickness: 2,
                      indent: 50,
                      endIndent: 2,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                   Text(
                        '$counter2',
                        style:const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {setState(() {
                            counter2++;
                          });print(counter2);},
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {setState(() {
                            counter2+=2;
                          }); print(counter2);},
                          child: const Text(
                            'Add 2 Points',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {setState(() {
                            counter2+=3;
                          }); print(counter2);},
                          child: const Text(
                            'Add 3 Points',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    minimumSize: const Size(150, 50),
                  ),
                  onPressed: () {
                    setState(() {
                      counter2=0;
                      counter=0;

                    });
                    print(counter);
                    print(counter2);
                  },
                  child: const Text(
                    'Reset',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
