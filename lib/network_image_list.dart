import 'package:flutter/material.dart';

class NetworkImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(12),
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(8),
            child: Card(
              clipBehavior: Clip.hardEdge,
              margin: EdgeInsets.all(8),
              child: Image(
                
                height: 190,
                fit: BoxFit.fitWidth,
                image: NetworkImage(
                  'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.all(8),
            child: Card(
              clipBehavior: Clip.hardEdge,
              margin: EdgeInsets.all(8),
              child: Image(
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }
                  return Center(child: CircularProgressIndicator());
                },
                height: 190,
                fit: BoxFit.fitWidth,
                image: NetworkImage(
                  'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.all(8),
            child: Card(
              clipBehavior: Clip.hardEdge,
              margin: EdgeInsets.all(8),
              child: Image(
                  height: 190,
                  fit: BoxFit.fitWidth,
                  image: NetworkImage(
                    'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
