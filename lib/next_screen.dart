import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
TextStyle text = const TextStyle(fontSize: 20,fontWeight: FontWeight.bold);

class NextScreen extends StatefulWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen>{

  var itemImage = ['assets/images/shoes_8.png','assets/images/shoes_1.png',
  'assets/images/shoes_8.png','assets/images/shoes_1.png','assets/images/shoes_3.png'
   'assets/images/shoes_5.png','assets/images/shoes_4.png'
  ];
 int image1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xfff6f6f6),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Stack(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 30),
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white, // for Right
                    child: IconButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, icon: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.black,size: 20)),
                  ),
                  trailing: const CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.favorite_border,color: Colors.black,size: 20,)), // for Left
                ),
                Align(
                  alignment: Alignment.topCenter,
                   child: Image.asset(itemImage[image1],
                    fit: BoxFit.contain,height: 150.0,),
                ),
              ],
            ),
            SizedBox(height: 5),
            CircleRow(),
            SizedBox(height: 15),
            main_Container(),
            SizedBox(height: 10),
          ],
        ),
      ),



    );
  }
}

CircleRow(){
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: const EdgeInsets.only(left: 5,right: 5),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: Colors.grey,
                 ),
                borderRadius: BorderRadius.circular(100),
                color:Color(0xfff9f9f9),
              ),
              child: Image.asset('assets/images/shoes_8.png'),
            ),
          const SizedBox(width: 7),
          getProductShoes('assets/images/shoes_2.png'),
          const SizedBox(width: 7),
          getProductShoes('assets/images/shoes_1.png'),
          const SizedBox(width: 7),
          getProductShoes('assets/images/shoes_4.png'),
          // getProductIcon('assets/images/shoes_4.png'),
          const SizedBox(width: 7),
          getProductShoes('assets/images/shoes_5.png'),
        ],
      ),
    ),
  );
}
main_Container(){
  return Expanded(
      child: Container(
        // height: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),),
          color: Colors.white,
        ),
        child: Container(
            margin: EdgeInsets.only(left: 15,right: 15,top: 10),
            // color: Colors.deepOrange,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Nike Blazer Mid 77',style:TextStyle(fontSize: 25,
                        fontWeight: FontWeight.bold,color: Color(0xff010101)),),
                    Wrap(
                      children: const [
                        CircleAvatar(radius: 15,backgroundColor: Color(0xfffe882e)),
                        SizedBox(width: 4),
                        CircleAvatar(radius: 15,backgroundColor: Color(0xffffccdc),),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text('\$79,0',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                SizedBox(height: 8),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                    Container(
                      alignment: Alignment.center,
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          color: const Color(0xfff6f6f6),
                          border: Border.all(
                            width: 2.0,
                            color: Color(0xfffe882e),
                          ),
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: const Text('34',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    const SizedBox(width: 5),
                      getTextNumbers('35',),
                    const SizedBox(width: 5),
                    getTextNumbers('36',),
                    const SizedBox(width: 5),
                    getTextNumbers('37',),
                    const SizedBox(width: 5),
                    getTextNumbers('38',),
                    const SizedBox(width: 5),
                    getTextNumbers('39',),
                   ],
                  ),
                ),
               const SizedBox(height: 15),
               // Align(
               //   alignment: Alignment.topLeft,
                 const Text(style: TextStyle(letterSpacing: 1, fontSize: 14, fontWeight: FontWeight.w700, color: Color(0xffdbdee5)),
                     "It happend in 1977 . The Nike Blazer Mid '7 makes"
                     "a legendary debut on the Court ..." ),
                const SizedBox(height: 6),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text('Read more:',style: TextStyle(color: Color(0xfffe882e),fontSize: 20,fontWeight: FontWeight.bold),)),
                const SizedBox(height: 6),
                const Align(
                 alignment: Alignment.topLeft,
                child: Text('Reviews:',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
                const SizedBox(height: 6),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
               Center(
                 child: FlutterImageStack(
                   imageList: const [
                     'https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80',
                     'https://images.unsplash.com/photo-1612594305265-86300a9a5b5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
                     'https://images.unsplash.com/photo-1612626256634-991e6e977fc1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1712&q=80',
                     'https://stimg.cardekho.com/images/carexteriorimages/930x620/Hyundai/Venue/9154/1655441194954/front-left-side-47.jpg?tr=w-375'
                   ],
                   totalCount: 14,
                   itemCount: 4,
                   itemRadius: 40,
                 ),
                ),
                Row(
                  children: [
                    Wrap(
                      children: const [
                        Icon(Icons.star,color: Color(0xfffe882e),size: 20,),
                        Icon(Icons.star,color: Color(0xfffe882e),size: 20,),
                        Icon(Icons.star,color: Color(0xfffe882e),size: 20,),
                        Icon(Icons.star,color: Colors.black,size: 22,),
                        Icon(Icons.arrow_circle_down_sharp,color: Color(0xfffe882e),size: 25,),
                      ],
                    ),
                   ],
                 )
                ],
              ),
              const SizedBox(height: 25),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xfffe882e),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: const Center(
                  child: Text('Add to cart',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                ),
              ),
              ],
            )
        ),
      ),
  );
}


getProductShoes(String imagePath){
return Container(
  height: 50,
  width: 50,
  decoration: BoxDecoration(
     border: Border.all(
       width: 2.0,
       color: Colors.white,
     ),
     borderRadius: BorderRadius.circular(100),
     color:const Color(0xfff9f9f9),
   ),
   child: Image.asset(imagePath),
  );
}
getTextNumbers(String textNum){
 return Container(
    alignment: Alignment.center,
    height: 55,
    width: 55,
    decoration: BoxDecoration(
        color: const Color(0xffffffff),
        border: Border.all(
          width: 2.0,
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(50)
      ),
    child: Text(textNum,style: text,),
   );
}




