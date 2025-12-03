import 'package:flutter/material.dart';

class FirstContainer extends StatelessWidget{
  const FirstContainer({super.key});
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
              // color: Colors.blueGrey[300],
              margin: EdgeInsets.all(size.width * 0.04),
              padding: const EdgeInsets.all(8),
              alignment: Alignment.topCenter,
              constraints: BoxConstraints.expand(
                height:
                    Theme.of(context).textTheme.headlineMedium!.fontSize! * 5.1 +
                    200,
              ),
              // transform: Matrix4.rotationZ(0.1),
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius: BorderRadius.all(Radius.circular(15)),
                // shape: BoxShape.circle,
                // backgroundBlendMode: BlendMode.hardLight,
                color: Colors.blueGrey[300],
                boxShadow: [
                  BoxShadow(
                    // ignore: deprecated_member_use
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: DefaultTextStyle(
                style: Theme.of(
                  context,
                ).textTheme.headlineMedium!.copyWith(color: Colors.white),
                child: Column(
                  children: [
                    Text("this is inside container"),
                    Container(
                      width: size.width * 0.6,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 12),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(border: Border.all(width: 1)),
                      child: Text(
                        "This is another text",
                        overflow: TextOverflow.ellipsis,
                        // softWrap: true,
                      ),
                    ),
            
                    Container(
                      decoration: BoxDecoration(border: Border.all(width: 2)),
                      margin: EdgeInsets.all(9),
                      padding: EdgeInsets.all(5),
                      child: SelectionArea(child: Text("selectable text")),
                    )
                  ],
                ),
              ),
            );
  }
}