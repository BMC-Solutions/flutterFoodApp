import 'package:flutter/material.dart';
import 'bottomSheetScreen/bottomHome.dart';
import 'bottomSheetScreen/bottomMain.dart';

class StackOver extends StatefulWidget {
  const StackOver({super.key});

  @override
  _StackOverState createState() => _StackOverState();
}

class _StackOverState extends State<StackOver> {
  int position = 0;
  List screens = [const BottomMain(), const BottomHome(), const BottomHome(), const BottomHome()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.teal,
        body: screens[position],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
            padding: const EdgeInsets.all(2.0),
          child: SizedBox(
            height: 70,
            width: 70,
            child: FloatingActionButton.small(
              onPressed: () {
             setState(() {
              position = 0;
             });
        },
           backgroundColor: Colors.deepOrange,
            child: const Icon(Icons.home,size: 35),
       ),
          ),
     ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              getIconWidget(const Icon(Icons.shopping_cart_checkout_outlined),2),
              getIconWidget(const Icon(Icons.person),1),
              const SizedBox(
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
