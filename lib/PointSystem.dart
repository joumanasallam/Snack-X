import 'package:flutter/material.dart';
import 'package:ll/snacks.dart';

import 'Cart.dart';
import 'appbar.dart';
import 'navdrawer.dart';

class Point extends StatefulWidget {
  @override
  _PointState createState() => _PointState();
}

class _PointState extends State<Point> {
   void button1 (BuildContext context,cart c){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
      return snacks(c);
    }
    ));
    }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  NavDrawer(),
     appBar: CustomAppBar(),
      body: Container(

        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(

          child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 60,),
              Container(
              padding: EdgeInsets.all(20),
              width: 400,
              height: 200,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(25),
              color: Colors.pink[100]
         ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
             
                    Text("Introducing Our new ",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold )),
                     Text("Points System!",style: TextStyle(fontSize: 40,color: Colors.red,fontWeight: FontWeight.bold )),

              ],)
            ),
             SizedBox(height: 60,),
     Text("Snack X points system gives you the chance to get exclusive offers and discounts on snacks and movie tickets when you buy snacks using Snack X",style: TextStyle(fontSize: 20,color: Colors.black,)),

 SizedBox(height: 60,),
       Text("10 EGP = +1 Point",style: TextStyle(fontSize: 35,color: Colors.yellow,fontWeight: FontWeight.bold )),
 SizedBox(height: 60,),
       Text("You can apply Snack X Points while checking out your order and get a great discount!",style: TextStyle(fontSize: 20,color: Colors.black,)),
             SizedBox(height: 60,),

       Text("You Have",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold )),
       Text("100",style: TextStyle(fontSize: 20,color: Colors.black,)),


 SizedBox(height: 60,),

                Container(
           padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
  decoration: BoxDecoration(
    borderRadius:  BorderRadius.circular(10) ,
    
    color:  Colors.red,
    shape: BoxShape.rectangle,
  ),
  child: TextButton(
    
    child: Text("Back",style: TextStyle(fontSize: 15,color: Colors.white)),
    onPressed: () {button1(context,cart(snack_name: "", topping_name: "", price: 0,snack_url: "",quantiity: 0));},
  ),
),
         
            
            ],
          ),
        )
      )
      
    );
  }
}