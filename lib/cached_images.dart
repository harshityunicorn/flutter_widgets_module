import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CachedImages extends StatelessWidget {
  const CachedImages({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("single tap");
      },

      onDoubleTap: () {
        print('double taped');
      },

      onLongPress: () {
        print("long pressed");
      },

      // onPanStart: (details) {
      //   print("pan start");
      // },

      // onPanUpdate: (details) {
      //   print("pan update");
      // },

      onScaleStart: (details) {
        print(details);
      },

      onLongPressMoveUpdate: (d) => print("long pressed + moved"),

      child: SizedBox(
        height: 300,
        child: Card(
          child: CachedNetworkImage(
            height: 200,
            fit: BoxFit.cover,
            placeholder: (context, url) =>
                Center(child: CircularProgressIndicator()),
            imageUrl:
                'https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg',
            errorWidget: (context, url, error) => Icon(Icons.error, size: 50),
          ),
        ),
      ),
    );
  }
}
