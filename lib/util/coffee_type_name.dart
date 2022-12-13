import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' ;
import 'package:google_fonts/google_fonts.dart';

class CoffeeType extends StatelessWidget{
  final String name;
  final bool isSelected;

  const CoffeeType({ @required this.name, this.isSelected = false });



  Color getTheRightColor(){
    return this.isSelected ? Colors.orange : Colors.grey[700] ;
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0, left: 20.0),
      child: Text(
        "${this.name}",
        style: GoogleFonts.nunito(
          textStyle: TextStyle(
              color: getTheRightColor(),
              fontSize: 12.0,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

}