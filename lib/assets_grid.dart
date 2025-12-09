import 'package:flutter/material.dart';

class AssetsGrid extends StatelessWidget {
  const AssetsGrid({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 500,
      child: GridView.builder(
        itemCount: 4,
        padding: EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
        ),
        itemBuilder: (context, index) {
          return Card(
            child: InkWell(
              onDoubleTap: () {
                print("double taped");
              },
              
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Image(
                      image: AssetImage('assets/images/image1.jpg'),
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.developer_board_off_rounded),
                    title: Text("Mountains"),
                    subtitle: Text("mountains are cool"),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
