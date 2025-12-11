import 'dart:async';

import 'package:flutter/material.dart';

class StreamBuilderExample extends StatelessWidget {
  Stream<int> counterStream() {
    return Stream.periodic(Duration(seconds: 5), (count) => count).take(10);
  }

  const StreamBuilderExample({super.key});
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      // initialData: 0,
      stream: counterStream(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.connectionState == ConnectionState.active ||
            snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Counter: ${snapshot.data}',
                  style: TextStyle(fontSize: 48),
                ),
                SizedBox(height: 20),
                Text(
                  snapshot.connectionState == ConnectionState.done
                      ? 'Stream completed!'
                      : 'Counting...',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            );
          } else {
            return Text("no data available");
          }
        } else {
          return Text("idle");
        }
      },
    );
  }
}
