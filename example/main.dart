library helpful_extensions;

import 'package:flutter/material.dart';
import 'package:helpful_extensions/helpful_extensions.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Example'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          textBaseline: TextBaseline.alphabetic,
          textDirection: TextDirection.ltr,
          verticalDirection: VerticalDirection.down,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.blue.gradientColor,
                  ],
                  stops: const [0, 1],
                ),
              ),
            ),
            ListTile(
              autofocus: false,
              enableFeedback: true,
              enabled: true,
              isThreeLine: false,
              leading: const Icon(Icons.calendar_month),
              title: Text(
                DateTime(2022, 02, 22).weekdayAsString,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
