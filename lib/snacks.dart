import 'package:flutter/material.dart';
import 'package:ll/Cart.dart';
import 'package:ll/SnackDetails.dart';
import 'package:ll/snack.dart';

import 'Cart.dart';
import 'OrderCart.dart';
import 'PointSystem.dart';
import 'appbar.dart';
import 'navdrawer.dart';
import 'offers.dart';
 List cart1 =[];
class snacks extends StatefulWidget {
  cart c;
    snacks( this.c);

  @override
  _snacksState createState() => _snacksState(c);
}

class _snacksState extends State<snacks> {
   cart c1;
   _snacksState(this.c1);
  
  void addCart (cart c1){
    cart1.add(c1);
  }

    
  
  List<offer> li =[offer(ourl:  "assets/images/DIT_1138_JuneAMCStubsOfferTests_5LgPopcorn.jpg", oname: "Offer One "),
  offer(ourl:  "assets/images/DIT_1138_JuneAMCStubsOfferTests_5LgPopcorn.jpg", oname: "Offer One "),
  offer(ourl:  "assets/images/DIT_1138_JuneAMCStubsOfferTests_5LgPopcorn.jpg", oname: "Offer One "),
  offer(ourl:  "assets/images/DIT_1138_JuneAMCStubsOfferTests_5LgPopcorn.jpg", oname: "Offer One "),
  offer(ourl:  "assets/images/DIT_1138_JuneAMCStubsOfferTests_5LgPopcorn.jpg", oname: "Offer One "),
  offer(ourl:  "assets/images/DIT_1138_JuneAMCStubsOfferTests_5LgPopcorn.jpg", oname: "Offer One "),


  ];
  
  List<snack> l2=[snack(surl: "assets/images/popcorn-corn-pop-box-bucket-cinema.jpg", sname: "snack1", sd: "popcorn",price: 30),
   snack(surl: "assets/images/popcorn-corn-pop-box-bucket-cinema.jpg", sname: "snack1", sd: "popcorn",price: 30),
   snack(surl: "assets/images/PopcornCombo.jpg", sname: "2222", sd: "popcorn",price: 50),
   snack(surl: "assets/images/popcorn-corn-pop-box-bucket-cinema.jpg", sname: "snack1", sd: "popcorn",price: 30),
      snack(surl: "assets/images/popcorn-corn-pop-box-bucket-cinema.jpg", sname: "snack1", sd: "popcorn",price: 30),

   snack(surl: "assets/images/popcorn-corn-pop-box-bucket-cinema.jpg", sname: "snack1", sd: "popcorn",price: 30),

   snack(surl: "assets/images/popcorn-corn-pop-box-bucket-cinema.jpg", sname: "snack1", sd: "popcorn",price: 30),

   snack(surl: "assets/images/popcorn-corn-pop-box-bucket-cinema.jpg", sname: "snack1", sd: "popcorn",price: 30),

   snack(surl: "assets/images/popcorn-corn-pop-box-bucket-cinema.jpg", sname: "snack1", sd: "popcorn",price: 30),

   snack(surl: "assets/images/popcorn-corn-pop-box-bucket-cinema.jpg", sname: "snack1", sd: "popcorn",price: 30),

   ]  ; 
   Widget snack1 (String surl ,String sname, String sd,num price){
    return  InkWell(
          child: Row(
        children: [
           Container(
             //  color: Colors.red.withOpacity(0.5),


             margin: EdgeInsets.all(0) ,
                   padding: EdgeInsets.all(0),
                   height: 37,
                   width: 100,
                   child: Column(
                     //mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                      
                     Text(sname,
                     ),
                     Text(sd, style: TextStyle(color: Colors.yellow),)
                   ],),
                    decoration: BoxDecoration(
                      
                    border: Border.all(
            color: Colors.black, //color of border
            width: 1, //width of border
          ),
                shape: BoxShape.rectangle,
               
                
              ),
                 ),
                 Container(
                   width: 50,
                    margin: EdgeInsets.all(0) ,
        child:  Image.asset(surl,width: 100,height: 60,),

                 )
        ],
      ),
      onTap:(){button2(context, surl, price,sname);}
    );
    

  } 
 void button3 (BuildContext context,List l ){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
      return OrderCart(l);
    }
    ));
    }
  void button2 (BuildContext context,String url, num price,String sname ){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
      return Snack_D(url,price,sname);
    }
    ));
    }
    void button1 (BuildContext context){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
      return Point();
    }
    ));
    }
  @override
  Widget build(BuildContext context) {
    addCart(c1);
    return Scaffold(
       drawer:  NavDrawer(),
     appBar: CustomAppBar(),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             Text("Order snacks to step up",style: TextStyle(fontSize: 30,color: Colors.black )),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                  Text("The",style: TextStyle(fontSize: 30,color: Colors.black )),
                   Text("Game",style: TextStyle(fontSize: 30,color: Colors.yellow )),
               ],
             ),
          Text("here's a great and fast choice for your favorite snacks",style: TextStyle(fontSize: 10,color: Colors.yellow ))
,
SizedBox(
             height:300,
             width: 2000,
              
                 child: GridView.builder(
                   itemCount: l2.length,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          mainAxisExtent:70,)
                     ,
                   itemBuilder: (context, index) {
                    final item=l2[index];
                     return
                   snack1(item.surl, item.sname, item.sd,item.price);
                   },
                 
                 ),
              ),
          SizedBox(height: 30,),

          
        
          InkWell(
                      child: Container(
              padding: EdgeInsets.all(20),
              width: 400,
              height: 100,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(100),
              color: Colors.yellow
         ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                    Text("Want To Earn Free ",style: TextStyle(fontSize: 20,color: Colors.white )),
                     Text("Snack ?",style: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.bold )),
                 ],
               ),
            Text("LEARN MORE",style: TextStyle(fontSize: 20,color: Colors.black ))
,

              ],)
            ),
            onTap: (){button1(context);},
          ),

          SizedBox(height: 30,),
            Row(
               
                 children: [
                    Text("Offers For",style: TextStyle(fontSize: 30,color: Colors.black )),
                     Text(" You",style: TextStyle(fontSize: 30,color: Colors.red,fontWeight: FontWeight.bold )),
                 ],),
                   SizedBox(height: 30,),
                  Container(
                 child: SingleChildScrollView(
               scrollDirection: Axis.horizontal,

                        child: Row(
             children: [
               ...li.map((e){
              return Column(
              children: [
                 
                  
                   InkWell(
                     onTap: (){},
                     child: Image.asset(e.ourl,width: 200,height: 100,)),
                 Text(e.oname),

              ],
              );
               }) .toList(),
             ],
               ),
                 ),
               ),
               SizedBox(height: 60,),
                Container(
           padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
  decoration: BoxDecoration(
    borderRadius:  BorderRadius.circular(10) ,
    
    color:  Colors.red,
    shape: BoxShape.rectangle,
  ),
  child: TextButton(
    
    child: Text("Go To Cart",style: TextStyle(fontSize: 15,color: Colors.white)),
    onPressed: () {
      print (cart1.length);
      button3(context, cart1);
    },
  ),
),
         
          ],)
        
        ,),
      ),
      
    );
  }
 
}