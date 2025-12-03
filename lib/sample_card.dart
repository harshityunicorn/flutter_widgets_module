import 'package:flutter/material.dart';

class SampleCard extends StatelessWidget {
  SampleCard({super.key, required this.cardName});

  String cardName;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.all(20),
      elevation: 20,
      color: Colors.grey,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () => {debugPrint("card taped")},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(
                Icons.airline_seat_recline_normal_rounded,
                size: 40,
              ),
              title: Text(cardName),
              subtitle: Text("this is sub title of this card"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: Text("first button")),
                const SizedBox(width: 8),
                TextButton(onPressed: () {}, child: Text("second button")),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
