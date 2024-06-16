import 'package:flutter/material.dart';

class SuggestionBox extends StatelessWidget {
final String headline;
final String description;
final Color color;
 SuggestionBox(this.headline, this.description, this.color);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Container(
        width:  300,
        // height: 200,
        // constraints: BoxConstraints(maxHeight: 100, maxWidth: 400),
        child: Column(children: [
             Text(headline, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
             Text(description, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),)
    
    
        ]),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(color: color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.white,
          width: 2
        )
        ),
      ),
    );
  }
}