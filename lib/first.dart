import 'package:e_commerce_app/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  List <card> item = [];

  @override
  void initState() {
    card p1 = card('assets/images/shoes_1.png', 'Nike Blazer Mid 77', '\$79,0');
    card p2 = card('assets/images/shoes_1.png', 'Nike Blazer Mid 77', '\$79,0');
    card p3 = card('assets/images/shoes_8.png', 'Nike Blazer Mid 77', '\$79,0');
    card p4 = card('assets/images/shoes_2.png', 'Nike Blazer Mid 77', '\$79,0');
    super.initState();
    item = [p1, p2, p3, p4];
  }

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverWovenGridDelegate.count(
        tileBottomSpace: 2,
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        pattern: [
          const WovenGridTile(
            4.0 / 4.5,
            crossAxisRatio: 0.9,
            alignment: AlignmentDirectional.bottomCenter,
          ),
          WovenGridTile(1),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        childCount: item.length,
            (context, index) =>
            Container(
                color: Color(0xffffdec1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  const CircleAvatar(
                    child: Icon(Icons.favorite_border),
                  ),
                    Container(
                      child: Image.asset(item[index].imageUrl, height: 100),
                    ),
                  ],
                )
            ),
      ),
    );
  }
}
