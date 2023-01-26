import 'package:e_commerce_app/model/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'next_screen.dart';

class TabScreen extends StatefulWidget {
  List<Product> productsList = [];
  TabScreen({Key? key,required List<Product> productList,}) : super(key: key){
   productsList = productList;
  }
  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context){
    var height = MediaQuery.of(context).size.height*0.2;
    var width  = MediaQuery.of(context).size.width;
    return GridView.custom(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      physics: const NeverScrollableScrollPhysics(
      ),
      shrinkWrap: true,
      gridDelegate: SliverWovenGridDelegate.count(
        crossAxisCount: 2,
        mainAxisSpacing: 13,
        crossAxisSpacing: 8,
        pattern: [
          const WovenGridTile(
          1/1.3,
            // crossAxisRatio: 0.9,

            alignment: AlignmentDirectional.bottomCenter,
          ),
          WovenGridTile(1/1.3),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
           childCount: widget.productsList.length,
            (context, index) =>
                Container(
                  height: height,
                   width: width,
                   decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                        color: Color(0xfffe882e),
                      ),
                    // color: Colors.blue[200],
                    color: Color(0xffc0c4ce),
                    // color: Color(0xfffe882e),
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
                          child: Image.asset(widget.productsList[index].imageUrl!,height: 120),
                        ),
                      ),
                    ],
                  ),

                 Text(widget.productsList[index].productTitle!,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                SizedBox(height: 10),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Text(widget.productsList[index].productSubtitle!,style:const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
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

