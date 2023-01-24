import 'package:flutter/material.dart';
// import 'model/products.dart';


class NextScreen extends StatefulWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen>{
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
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white, // for Right
                child: IconButton(onPressed: (){
                  Navigator.of(context).pop();
                }, icon: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.black,size: 30)),
              ),
              trailing: const CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.favorite_border,color: Colors.black,size: 30,)), // for Left
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset('assets/images/shoes_8.png',
                fit: BoxFit.contain,height: 100.0,),
            ),
            SizedBox(height: 5),
            circlear_Row(),
            SizedBox(height: 10),
            main_Container(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}


circlear_Row(){
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: const EdgeInsets.only(left: 5,right: 5),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 65,
            width: 65,
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
          SizedBox(width: 5),
          Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              border: Border.all(
                width: 3.0,
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(100),
              color:Color(0xfff9f9f9),
            ),
            child: Image.asset('assets/images/shoes_1.png'),
          ),
          SizedBox(width: 5),
          Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              border: Border.all(
                width: 3.0,
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(100),
              color:Color(0xfff9f9f9),
            ),
            child: Image.asset('assets/images/shoes_3.png'),
          ),
          SizedBox(width: 5),
          Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              border: Border.all(
                width: 3.0,
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(100),
              color:Color(0xfff9f9f9),
            ),
            child: Image.asset('assets/images/shoes_5.png'),
          ),
          SizedBox(width: 5),
          Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              border: Border.all(
                width: 3.0,
                color: Colors.white
                ,
              ),
              borderRadius: BorderRadius.circular(100),
              color:Color(0xfff9f9f9),
            ),
            child: Image.asset('assets/images/shoes_4.png'),
          ),
        ],
      ),
    ),
  );
}
main_Container(){
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),),
        color: Colors.white,
      ),
      child: Container(
          margin: EdgeInsets.all(20),
          // color: Colors.deepOrange,
          child:Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Nike Blazer Mid 77',style:const TextStyle(fontSize: 25,
                      fontWeight: FontWeight.bold,color: Color(0xff010101)),),
                  Wrap(
                    children: const [
                      CircleAvatar(radius: 15,backgroundColor: Color(0xfffd6700),),
                      SizedBox(width: 4),
                      CircleAvatar(radius: 15,backgroundColor: Color(0xffffccdc),),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 8),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text('\$79,0',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              SizedBox(height: 15),
              second_Circlear_Rower(),
            ],
          )
      ),
    ),
  );
}
second_Circlear_Rower(){
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(children: [
      Container(
        alignment: Alignment.center,
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: Color(0xfff6f6f6),
            border: Border.all(
              width: 2.0,
              color: Color(0xfffe882e),
            ),
            borderRadius: BorderRadius.circular(50)
        ),
        child: Text('34',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      SizedBox(width: 5),
      Container(
        alignment: Alignment.center,
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: Color(0xffffffff),
            border: Border.all(
              width: 2.0,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(50)
        ),
        child: Text('35',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      SizedBox(width: 5),
      Container(
        alignment: Alignment.center,
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: Color(0xffffffff),
            border: Border.all(
              width: 2.0,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(50)
        ),
        child: Text('36',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      SizedBox(width: 5),
      Container(
        alignment: Alignment.center,
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: Color(0xffffffff),
            border: Border.all(
              width: 2.0,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(50)
        ),
        child: Text('37',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      SizedBox(width: 5),
      Container(
        alignment: Alignment.center,
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: Color(0xffffffff),
            border: Border.all(
              width: 2.0,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(50)
        ),
        child: Text('38',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      SizedBox(width: 5),
      Container(
        alignment: Alignment.center,
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: Color(0xffffffff),
            border: Border.all(
              width: 2.0,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(50)
        ),
        child: Text('39',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
    ],),
  );

}

