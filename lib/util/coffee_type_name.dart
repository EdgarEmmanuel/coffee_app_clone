import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' ;
import 'package:google_fonts/google_fonts.dart';

class CoffeeType extends StatelessWidget{
  final String name;

  const CoffeeType({ @required this.name});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      child: Text(
        "${this.name}",
        style: GoogleFonts.adamina(
          textStyle: TextStyle(
              color: Colors.grey[700],
              fontSize: 12.0,
              fontWeight: FontWeight.w100
          ),
        ),
      ),
    );
  }

}