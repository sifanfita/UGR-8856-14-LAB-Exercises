import 'package:flutter/material.dart';

void main() {
  runApp(const Car());
}

class Car extends StatelessWidget {
  const Car({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.arrow_back),
                      Icon(Icons.upcoming),
                      Icon(Icons.settings),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Image.network(
                    'https://media.istockphoto.com/id/1379610301/photo/generic-modern-car-in-front-of-concrete-wall.jpg?s=1024x1024&w=is&k=20&c=3WX1xrMd0M1m7sBjn1bMZVgWRgoRRJVLsMO8VvBJe10=',
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    '1975 Porsche',
                    style: TextStyle(fontSize: 48.0),
                  ),
                  const Text(
                    'Carrera',
                    style: TextStyle(fontSize: 48.0),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          // Handle button press
                        },
                        icon: const Icon(Icons.handyman_rounded),
                        label: const Text('0'),
                      ),
                      const SizedBox(width: 8.0),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Handle button press
                        },
                        icon: const Icon(Icons.message),
                        label: const Text('0'),
                      ),
                      const SizedBox(width: 8.0),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Handle button press
                        },
                        icon: const Icon(Icons.share),
                        label: const Text('Share'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: const [
                      Icon(Icons.circle_outlined),
                      Text('dnan, ajoJS, OADJ'),
                      Icon(Icons.edit),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  const Text('djweoif'),
                  const Text('djweoif'),
                  const Text('djweoif'),
                  const Text('djweoif'),
                  const SizedBox(height: 16.0),
                  Row(
                    children: const [
                      Icon(Icons.circle),
                      Text(
                        'Description',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    children: const [
                      Icon(Icons.circle),
                      Text(
                        'Photos',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}