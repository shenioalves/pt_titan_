import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
          useMaterial3: true,
        ),
        home: Container(
            color: Colors.white10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: Colors.red,
                      height: 110,
                      width: 110,
                      child: Text(
                        'A',
                        style: TextStyle(color: Colors.black, fontSize: 90),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      color: Colors.orange,
                      height: 110,
                      width: 110,
                      child: Text(
                        'B',
                        style: TextStyle(color: Colors.black, fontSize: 90),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      color: Colors.yellow,
                      height: 110,
                      width: 110,
                      child: Text(
                        'C',
                        style: TextStyle(color: Colors.black, fontSize: 90),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: Colors.green,
                      height: 110,
                      width: 110,
                    ),
                    Container(
                      color: Colors.blueGrey,
                      height: 110,
                      width: 110,
                    ),
                    Container(
                      color: Colors.blue,
                      height: 110,
                      width: 110,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.deepPurple,
                      height: 110,
                      width: 110,
                    ),
                    Container(
                      color: Colors.pink,
                      height: 110,
                      width: 110,
                    ),
                    Container(
                      color: Colors.white,
                      height: 110,
                      width: 110,
                    ),
                  ],
                ),
                ElevatedButton(onPressed: (){}, child:  ),
              ],
            )));
  }
}
