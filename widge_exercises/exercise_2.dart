import 'package:flutter/material.dart';

void main() {
  runApp(const Widget2());
}

class Widget2 extends StatelessWidget {
  const Widget2({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text(
            'BMI CALCULATOR',
            style: TextStyle(
              fontSize: 48.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Icon(Icons.male),
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(10.0),
                ),
                Container(
                  child: Icon(Icons.female),
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(10.0),
                ),
              ],
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('HEIGHT'),
                  Slider(
                    value: 176,
                    onChanged: (value) {
                      // Handle slider value change
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('WEIGHT'),
                            Text('60'),
                            Row(
                              children: [
                                Icon(Icons.minimize),
                                Icon(Icons.maximize),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('AGE'),
                            Text('23'),
                            Row(
                              children: [
                                Icon(Icons.minimize),
                                Icon(Icons.maximize),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              child: Text(
                'CALCULATE',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}