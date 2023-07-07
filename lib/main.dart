import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Design',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI Design'),
      ),
      body: Container(
        width: 100,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          // Left Side
          Column(
            children: [
              // Title
              Text('Title'),
              // Description
              Text('Desription'),
              // Ratting And Review
              Row(
                children: [
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      const Text('150 Review')
                    ],
                  )
                ],
              ),
              // Icon, Label and Minit Label
              Row(
                children: [
                  //One Box
                  Column(
                    children: [
                      Icon(Icons.access_alarm),
                      Text('Label'),
                      Text('25 Min'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.access_alarm),
                      Text('Label'),
                      Text('30 Min'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.access_alarm),
                      Text('Label'),
                      Text('10 Min'),
                    ],
                  )
                ],
              )
            ],
          ),
          // Right Side
          Image.asset(
            'assets/images/logo.png',
            height: 100,
            width: 100,
          ),
        ]),
      ),
    );
  }
}
