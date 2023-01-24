import 'package:e_commerce/model/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    // var productList;
    return GridView.custom(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverWovenGridDelegate.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        pattern: [
          const WovenGridTile(
            4.0 / 4.0,
            // crossAxisRatio: 0.9,

            alignment: AlignmentDirectional.bottomCenter,
          ),
          WovenGridTile(1),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
           childCount: productList.length,
            (context, index) =>
                Container(
                  decoration: BoxDecoration(
                    // color: Colors.blue,
                    // color: Color(0xffc0c4ce),
                    color: Color(0xfff6f6f6),
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
                    Container(
                      child: Image.asset(productList[index].imageUrl, height: 100),
                    ),
                     Text(productList[index].productTitle,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ListTile(
                         title:Text(productList[index].productSubtitle,style:const TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),),
                         trailing: CircleAvatar(radius: 10,backgroundColor: Colors.deepOrangeAccent,),
                       ),
                  )

                  ],
                )
            ),
      ),
    );
  }
}

