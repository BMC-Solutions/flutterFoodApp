import 'package:e_commerce_app/model/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'model/products.dart';
import 'next_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      physics: const NeverScrollableScrollPhysics(
      ),
      shrinkWrap: true,
      gridDelegate: SliverWovenGridDelegate.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        pattern: [
          const WovenGridTile(
          1.6/2.4,
            // crossAxisRatio: 0.9,

            alignment: AlignmentDirectional.bottomCenter,
          ),
          WovenGridTile(2/3),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
           childCount: productList.length,
            (context, index) =>
                Container(
                  decoration: BoxDecoration(
                    // color: Colors.blue[200],
                    // color: Color(0xffc0c4ce),
                    color: Color(0xfffe882e),
                    // color: Color(0xfff6f6f6),
                   borderRadius: BorderRadius.circular(20)
                  ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20,right: 100),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: Icon(Icons.favorite_border,color: Colors.deepOrangeAccent,),
                    ),
                  ),
                 Stack(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const NextScreen()),
                          );
                        },
                        child: Container(
                          child: Image.asset(productList[index].imageUrl, height: 100),
                        ),
                      ),
                    ],
                  ),

                 Text(productList[index].productTitle,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                SizedBox(height: 10),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Text(productList[index].productSubtitle,style:const TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),),
                  Wrap(
                    children: const [
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(width: 3),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.deepOrange,
                      ),
                    ],
                  )
                  ],
                  ),
                  ],
                )
            ),
      ),
    );
  }
}

