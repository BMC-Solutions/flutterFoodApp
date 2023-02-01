import 'package:flutter/material.dart';
import '../first.dart';
import '../model/products.dart';

class BottomMain extends StatefulWidget {
  const BottomMain({Key? key}) : super(key: key);

  @override
  State<BottomMain> createState() => _BottomMainState();
}

class _BottomMainState extends State<BottomMain>with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // print(Product(IconData:icon).getProductList().length);
    return NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    height: 140,
                    width: double.infinity,
                    margin:
                    EdgeInsets.only(bottom: 20, left: 10, right: 10, top: 10),
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Colors.orange,
                            Colors.orangeAccent,
                            Colors.red,
                            Colors.redAccent
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0, 0.2, 0.5, 0.8],
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'New Arrivals',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                            height: 65,
                            child: Image.asset(
                              'assets/images/nike_logo_1.png',
                              fit: BoxFit.cover,
                            )),
                        const Text(
                          'Summer 2023',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin:
                    EdgeInsets.only(bottom: 10, left: 10, right: 10, top: 10),
                    child: TabBar(
                      controller: _tabController,
                      isScrollable: true,
                      indicator: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        // color: Colors.white
                        gradient: const LinearGradient(
                          colors: [
                            Colors.orange,
                            Colors.orangeAccent,
                            Colors.red,
                            Colors.orange,
                            // Colors.redAccent
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0, 0.2, 0.5, 0.8],
                        ),
                      ),
                      indicatorPadding: EdgeInsets.all(0),
                      indicatorWeight: 0.3,
                      labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                      tabs: [
                        Tab(
                          height: 75,
                          child: CircleAvatar(
                            radius: 30,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xfff6f6f6),
                              ),
                              child: Image.asset('assets/images/shoes_1.png',
                                  height: 180),
                            ),
                          ),
                        ),
                        Tab(
                          height: 75,
                          child: CircleAvatar(
                            radius: 30,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xfff6f6f6),
                              ),
                              child: Image.asset('assets/images/shoes_2.png',
                                  height: 180),
                            ),
                          ),
                        ),
                        Tab(
                          height: 75,
                          child: CircleAvatar(
                            radius: 30,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xfff6f6f6),
                              ),
                              child: Image.asset('assets/images/shoes_3.png',
                                  height: 180),
                            ),
                          ),
                        ),
                        Tab(
                          height: 75,
                          child: CircleAvatar(
                            radius: 30,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xfff6f6f6),
                              ),
                              child: Image.asset('assets/images/shoes_4.png',
                                  height: 180),
                            ),
                          ),
                        ),
                        Tab(
                          height: 75,
                          child: CircleAvatar(
                            radius: 30,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color(0xfff6f6f6),
                              ),
                              child: Image.asset('assets/images/shoes_5.png',
                                  height: 180),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin:
                    EdgeInsets.only(bottom: 10, left: 10, right: 10, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const <Widget>[
                        Text(
                          'Nike Blazer',
                          style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          'items',
                          style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          Icons.multitrack_audio,
                          size: 25,
                          color: Colors.deepOrange,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ];
        },
        body:TabBarView(
          controller: _tabController,
          children: [
            TabScreen(productList: Product().getProductList(), bordersColors: [],),
            TabScreen(productList: Product().getProductList(), bordersColors: [],),
            TabScreen(productList: Product().getProductList(), bordersColors: [],),
            TabScreen(productList: Product().getProductList(), bordersColors: [],),
            TabScreen(productList: Product().getProductList(), bordersColors: [],),
          ],
        )
    );
  }
}

