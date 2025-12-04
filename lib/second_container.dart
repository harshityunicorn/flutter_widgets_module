import 'package:flutter/material.dart';
import 'package:flutter_widgets/sample_card.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // TODO: implement build
    return Container(
      
      margin: EdgeInsets.all(10),
       
      // height: size.width * 0.9,
      decoration: BoxDecoration(
       
        color: Colors.brown,
        border: Border.all(width: 1),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [BoxShadow(blurRadius: 5, )],
      ),
      
      
      child: Center(
        child: Column(
          children: [
            Card.filled(child: SampleCard(cardName: "filled card"), color: Colors.blueGrey,),
            Card.outlined(child: SampleCard(cardName: "outlined card",), color: Colors.amber,),
            Card(child : SampleCard(cardName: "simple card",), color: Colors.teal,)
          ],
        ),
      ),
    );
  }
}
