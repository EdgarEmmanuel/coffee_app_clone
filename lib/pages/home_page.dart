import 'package:flutter/material.dart' ;
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.menu
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
                Icons.person
            )
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('')
            ),
          BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                title: Text('')
            ),
          BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                title: Text('')
            ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Find The Best Coffee For You",
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      fontSize: 36,
                    fontWeight: FontWeight.bold
                  )
              ),
            ),
          )
        ],
      )
    );
  }
}