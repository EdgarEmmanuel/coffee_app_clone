import 'package:flutter/material.dart' ;
import 'package:google_fonts/google_fonts.dart';


class CoffeeTile extends StatelessWidget{
  final String imagePath;
  final String coffeeName;
  final String coffeeDescription;
  final double coffeePrice;

  const CoffeeTile({
    @required this.imagePath,
    @required this.coffeeName,
    @required this.coffeeDescription,
    @required this.coffeePrice
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
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
                  "${this.imagePath}",
                  height: 200,
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
                    "${this.coffeeName}",
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
                    "${this.coffeeDescription}",
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
                    Text("\$${this.coffeePrice}"),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Icon(Icons.add),

                  ),
                ],
              ),
            ),



          ],
        ),
      )
    );
  }

}