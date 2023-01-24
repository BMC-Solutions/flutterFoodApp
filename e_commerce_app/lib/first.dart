import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
   List <String> image = ['assets/images/shoes_6.png','assets/images/shoes_5.png',
     'assets/images/shoes_1.png','assets/images/shoes_2.png','assets/images/shoes_9.png',
     'assets/images/shoes_8.png'
   ];
  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverWovenGridDelegate.count(
        tileBottomSpace: 2,
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        pattern: [
          WovenGridTile(
            4.0 / 5,
            crossAxisRatio: 0.9,
            alignment: AlignmentDirectional.bottomCenter,
          ),
          WovenGridTile(1),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        childCount: image.length,
            (context, index) => Container(
                color: Color(0xffffdec1),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Container(
                  child: Image.asset(image[index]),
                ),


      ],
       )
      ),
      ),
    );
  }
}