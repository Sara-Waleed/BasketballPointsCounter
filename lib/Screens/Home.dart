import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/basket_pointer_cubit.dart';




class BasketballPoints extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context) => BasketPointerCubit() ,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<BasketPointerCubit, BasketPointerState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            centerTitle: false,
            title: const Text('Points counter '),
          ),
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                          '${BlocProvider.of<BasketPointerCubit>(context).counter}',
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
                              BlocProvider.of<BasketPointerCubit>(context).TeamAIncreament(buttonNumber:1);

                            },
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
                            onPressed: () {
                              BlocProvider.of<BasketPointerCubit>(context).TeamAIncreament(buttonNumber:2);
                            },
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
                            onPressed: () {
                              BlocProvider.of<BasketPointerCubit>(context).TeamAIncreament(buttonNumber:3);

                            },
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
                          '${BlocProvider.of<BasketPointerCubit>(context).counter2}',
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
                            onPressed: () {
                              BlocProvider.of<BasketPointerCubit>(context).TeamBIncreament(buttonNumber:1);
                            },
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
                            onPressed: () {
                              BlocProvider.of<BasketPointerCubit>(context).TeamBIncreament(buttonNumber:2);

                            },
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
                            onPressed: () {
                              BlocProvider.of<BasketPointerCubit>(context).TeamBIncreament(buttonNumber:3);

                            },
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
                      BlocProvider.of<BasketPointerCubit>(context).resetPoints();
                    },
                    child: const Text(
                      'Reset',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )),
              ],
            ),
          ),
        );
      },
      listener:(context, state) {},

    );
  }
}
