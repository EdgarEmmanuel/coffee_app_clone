import 'package:flutter/material.dart' ;
import 'package:google_fonts/google_fonts.dart';


class CoffeeTile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, bottom: 25.0),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10.0)
        ),
      )
    );
  }

}