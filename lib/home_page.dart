import 'package:e_commerce_app/botttomSheetScreen/bottomHome.dart';
// import 'package:e_commerce_app/first.dart';
import 'package:flutter/material.dart';
import 'botttomSheetScreen/bottomMain.dart';

class StackOver extends StatefulWidget {
  @override
  _StackOverState createState() => _StackOverState();
}

class _StackOverState extends State<StackOver>
     {

  int position=0;
  List screens=[BottomMain(),BottomHome(),BottomHome(),BottomHome(),BottomHome()];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.teal,
        body: screens[position],

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(4.0),
          child: FloatingActionButton.small(
            onPressed: () {
              setState(() {
                position=0;
              });
            },
            child: Icon(Icons.add_shopping_cart),
            backgroundColor: Colors.deepOrange,
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.home, color: Colors.deepOrange),
                color: Colors.black,
                onPressed: () {

                  setState(() {
                    position=1;
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.person),
                color: Colors.black,
                onPressed: () {
                  setState(() {
                    position=2;
                  });
                },
              ),
              SizedBox(
                width: 40,
              ),
              IconButton(
                icon: Icon(Icons.add_shopping_cart),
                color: Colors.black,
                onPressed: () {
                  setState(() {
                    position=3;
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.settings),
                color: Colors.black,
                onPressed: () {

                  setState(() {
                    position=4;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


