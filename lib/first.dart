import 'package:e_commerce_app/model/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'next_screen.dart';

class TabScreen extends StatefulWidget {
  List<Product> productsList = [];TabScreen({Key? key, required List<Product> productList,
  }) : super(key: key) {
    productsList = productList;
  }
  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  List<bool> bordersColors = [];
  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverWovenGridDelegate.count(
        crossAxisCount: 2,
        mainAxisSpacing: 13,
        crossAxisSpacing: 8,
        pattern: [
          const WovenGridTile(
            1 / 1.3,
            // crossAxisRatio: 0.9,

            alignment: AlignmentDirectional.bottomCenter,
          ),
          const WovenGridTile(1 / 1.3),
        ],
      ),
       childrenDelegate: SliverChildBuilderDelegate(
        childCount: widget.productsList.length,
        (context, index) => cardContainer(context, index, widget.productsList[index],),
       ),
    );
  }

  Container cardContainer(
      BuildContext context,
      int index,Product){
      bordersColors.add(false);
     return Container(
        decoration: BoxDecoration(
            border: Border.all(
              width: 1.0,
              color: const Color(0xfffe882e),
            ),
            // color: Colors.blue[200],
            // color: const Color(0xffc0c4ce),
            color: const Color(0xfffe882e),
            // color: Color(0xfff6f6f6),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 20, right: 100),
                child: GestureDetector(
                 onTap: () {
                   setState((){
                     // bordersColors[index] = !
                     // bordersColors[index];
                   });
                  },
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20.0,
                      child: GestureDetector(
                          onTap: (){
                           setState(() {
                             bordersColors[index] = !
                             bordersColors[index];
                           });
                          },
                        child: Icon(widget.productsList[index].icon!,
                          color:  bordersColors[index] ? Colors.red : Colors.pink, ),
                      )),
                 ),
               ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                       builder: (context) => const NextScreen()),
                    );
                  },
                  child: Image.asset(widget.productsList[index].imageUrl!,
                      height: 120),
                ),

            Text(
              widget.productsList[index].productTitle!,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  widget.productsList[index].productSubtitle!,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
     );
  }
}
