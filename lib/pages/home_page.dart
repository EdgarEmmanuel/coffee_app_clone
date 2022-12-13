import 'package:flutter/material.dart' ;
import 'package:flutter_tdd/util/coffee_tile.dart';
import 'package:flutter_tdd/util/coffee_type_name.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() {
    return _HomePage() ;
  }

}


class _HomePage extends State<HomePage>{
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
          this.getSearchField(),

          // differents coffee tiles
          this.getCoffeeTilesList(),

          // list of propositions
          this.getCoffeeTiles(),
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





  final List coffeeTiles = [
    [
      "https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDl8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
      "Cappucino",
      "With dark milk",
      4.00
    ]
  ];



  Widget getCoffeeTiles(){
    return Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: coffeeTiles.length,
          itemBuilder: (context, index){
            return CoffeeTile(
              imagePath: coffeeTiles[index][0],
              coffeeName: coffeeTiles[index][1],
              coffeeDescription: coffeeTiles[index][2],
              coffeePrice: coffeeTiles[index][3],
            );
          },
        )
    );
  }







  final List coffeeTilesName = [
    [
      "Cappucino",
      true
    ],
    [
      "Latte",
      false
    ],
    [
      "Espresso",
      false
    ],
    [
      "Tea",
      false
    ],
  ];

  changeSelectedCoffeeType(int index){
    setState(() {
      coffeeTilesName.forEach((e) => e[1] = false);
      coffeeTilesName[index][1] = !coffeeTilesName[index][1];
    });
  }

  Widget getCoffeeTilesList(){
    return Container(
      padding: EdgeInsets.all(5.0),
      height: 50,
      child: ListView.builder(
        itemCount: coffeeTilesName.length ,
        itemBuilder: (context, index) {
          return CoffeeType(
              name: coffeeTilesName[index][0],
              isSelected: coffeeTilesName[index][1],
              onTap: () => changeSelectedCoffeeType(index)
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }



}