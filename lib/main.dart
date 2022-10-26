import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

int number = 0;

// int subtract = 0;
// int reset = 0;
// int multiply = 0;

class _MyAppState extends State<MyApp> {
  // void first() {
  //   setState(() {
  //     add++;
  //   });
  // }

  // void second() {
  //   setState(() {
  //     subtract--;
  //   });
  // }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Provider $number'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Outcome of your input $number '),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      number++;
                    });
                  }),
                  child: Text('Add')),
              SizedBox(height: 10),
              SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(
                    onPressed: (() {
                      setState(() {
                        number--;
                      });
                    }),
                    child: Text('Subtract')),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    onPressed: (() {
                      setState(() {
                        number = number * 2;
                      });
                    }),
                    child: Text('Multiply')),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 50,
                width: 100,
                child: ElevatedButton(
                    onPressed: (() {
                      setState(() {
                        number = 0;
                      });
                    }),
                    child: Text('Reset')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
