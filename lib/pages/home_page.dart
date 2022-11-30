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
              label: ''
            ),
          BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: ''
            ),
          BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: ''
            ),
        ],
      ),
      body: Column(
        children: [
          // The Text: Find the best coffee for you
          this.getTitle(),

          SizedBox(
            height: 25,
          ),

          // search bar
          this.getSearchField()

          // list of propositions
        ],
      )
    );
  }


  Widget getTitle(){
    return Padding(
        padding: EdgeInsets.all(15.0),
        child: Text(
          "Find The Best Coffee For You",
          style: GoogleFonts.bebasNeue(
              textStyle: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold
              )
          ),
        ),
      );
  }

  Widget getSearchField(){
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
          ),
          hintText: 'Find your coffee...',
          focusedBorder: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade600,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0))
          )
        ),
      ),
    );
  }
}