import 'package:flutter/material.dart';

class CaraoselScroll extends StatefulWidget {
  const CaraoselScroll({super.key});
  @override
  State<CaraoselScroll> createState() {
    // TODO: implement createState
    return _CaraoselScrollState();
  }
}

class _CaraoselScrollState extends State<CaraoselScroll> {
  final CarouselController controller = CarouselController(initialItem: 1);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 500,
      child: CarouselView(
        itemExtent: 300,
        children: [
          Container(
            color: Colors.red,
            child: Image(
              image: AssetImage('assets/images/image1.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          Container(
            color: Colors.green,
            child: Image(
              image: AssetImage('assets/images/image1.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          Container(
            color: Colors.blue,
            child: Image(
              image: AssetImage('assets/images/image1.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
