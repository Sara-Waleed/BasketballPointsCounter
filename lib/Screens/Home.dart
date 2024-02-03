
import 'package:basketballpointsscreen/cubit/counterCubit.dart';
import 'package:basketballpointsscreen/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class BasketballPoints extends StatelessWidget {
  int counter =0;
  int counter2=0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context) => counterCubit(counterState as counterState) ,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
int counter1=0;
int counter2=0;
  @override
  Widget build(BuildContext context) {

    return BlocConsumer<counterCubit, counterState>(
      builder: (context, state) {
        return Scaffold(
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
                          '',
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
                            onPressed: () {},
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
                            onPressed: () { },
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
                            onPressed: () {},
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
                          '',
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
                            onPressed: () {},
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
                            onPressed: () {},
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
                            onPressed: () {},
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
      listener:(context, state) {
   if(state is CounterTeamA){
     counter1 = BlocProvider.of<counterCubit>(context).counter;

   }
   if(state is CounterTeamB){
     counter2 = BlocProvider.of<counterCubit>(context).counter2;

   }
      },

    );
  }
}
