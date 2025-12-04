import 'package:flutter/material.dart';

// class GridViewExample extends StatelessWidget {
//   const GridViewExample({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       // height: 600,
//       child: GridView(
//         physics: NeverScrollableScrollPhysics(),
//         shrinkWrap: true,
//         padding: EdgeInsets.all(8),

//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//           mainAxisSpacing: 10,
//           crossAxisSpacing: 10,
//         ),
//         children: List.generate(8, (index) {
//           return ListTile(
//             tileColor: Colors.blueGrey,
//             leading: CircleAvatar(),
//             title: Text(index.toString()),
//             subtitle: Text("sub title"),
//           );
//         }),
//       ),
//     );
//   }
// }

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: GridView.builder(
        // clipBehavior: Clip.hardEdge,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(8),
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10, 
        ),
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: ListTile(
                tileColor: Colors.grey,
                leading: Icon(Icons.wechat),
                title: Text("grid context $index"),
                subtitle: Text("grid subtitle"),
              ),
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }
}
