import 'package:e_commerce_app/botttomSheetScreen/bottomHome.dart';
import 'package:e_commerce_app/first.dart';
import 'package:flutter/material.dart';
import 'botttomSheetScreen/bottomMain.dart';

class StackOver extends StatefulWidget {
  @override
  _StackOverState createState() => _StackOverState();
}

class _StackOverState extends State<StackOver> {
  int position = -0;
  List screens = [BottomMain(), BottomHome(), BottomHome(), BottomHome()];

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
        backgroundColor: Colors.deepOrange,
         child: Icon(Icons.home),
       ),
     ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              getIconWidget(const Icon(Icons.shopping_cart_checkout_outlined),2),
              getIconWidget(const Icon(Icons.person),2),
              SizedBox(
                width: 40,
              ),
              getIconWidget(const Icon(Icons.settings),2),
              getIconWidget(const Icon(Icons.more_vert),3)
            ],
          ),
        ),
      ),
    );
  }

  getIconWidget(Icon icon, int index) {
    return IconButton(
      icon: icon,
      color: Colors.black,
      onPressed: () {
        setState(() {
          position = index;
        });
      },
    );
  }
}
