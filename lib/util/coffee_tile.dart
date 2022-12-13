import 'package:flutter/material.dart' ;
import 'package:google_fonts/google_fonts.dart';


class CoffeeTile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, bottom: 25.0),
      child: Container(
        padding: EdgeInsets.all(12.0),
        width: 150,
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(10.0)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // image
              Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  "https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDl8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
                  height: 100,
                  alignment: Alignment.center,
                ),
              ),
            ),


            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // title of the coffee
                  Text(
                    "Cappucino",
                    style: GoogleFonts.bebasNeue(
                        textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    textAlign: TextAlign.left,
                  ),


                  // description of the coffee
                  Text(
                    "With dark milk",
                    style: GoogleFonts.adamina(
                        textStyle: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 12.0,
                            fontWeight: FontWeight.w100
                        ),
                    ),
                  ),
                ],
              ),
            ),


            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Text("\$4.00"),
                  Icon(Icons.add)
                ],
              ),
            ),



          ],
        ),
      )
    );
  }

}