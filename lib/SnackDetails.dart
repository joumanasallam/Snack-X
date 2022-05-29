import 'package:flutter/material.dart';
import 'package:ll/snacks.dart';

import 'Cart.dart';
import 'appbar.dart';
import 'navdrawer.dart';
import "package:ll/topping.dart";
class Snack_D extends StatefulWidget {
    String surl;
      String sname;
  num price;
  Snack_D(this.surl, this.price,this.sname);
  @override
  _Snack_DState createState() => _Snack_DState(surl,price,sname);
}

class _Snack_DState extends State<Snack_D> {
   String sname1;
     String surl1;
 num price1;
 
  String toppingname="";
  dynamic  toppingprice;
 _Snack_DState(this.surl1, this.price1,this.sname1);
  List topping =[topping1(name: "Caramel", price: 5),
  topping1(name: "Orio", price: 12),
  topping1(name: "Choco", price: 10),
  topping1(name: "Caramel", price: 15),
  ];
  int _count=1;
  void _counter (int x){
    if( x==1){
      setState(() {
                         _count=_count+1;
                        
                       });
    }
  else 
  {
      setState(() {
        if (_count!=0) 
        _count=_count-1;
                         
                       });
    }
  }
    var checkBoxValue = false;
  
  
  void button1 (BuildContext context, cart c){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
      return snacks(c);
    }
    ));
    }
  @override
  Widget build(BuildContext context) {
    
        return Scaffold(
           drawer:  NavDrawer(),
          appBar:CustomAppBar(), 
          body: SingleChildScrollView(
            child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                           Container(
                          
                          height: 200,
                          width: double.infinity,
                          child: Text(""),
                        
                        decoration: BoxDecoration(
                          boxShadow: [BoxShadow(
                 //color of shadow
                spreadRadius: 5, //spread radius
               blurRadius: 7, // blur radius
                    offset: Offset(0, 2), // changes position of shadow
                      //first paramerter of offset is left-right
       //second parameter is top to down
            ),],
                           shape: BoxShape.rectangle,
                   
                        
                    image: DecorationImage(
                     
                     fit: BoxFit.fitHeight,
                      image: Image.asset(surl1 ).image,
                    ),
             ),
          
                       ),
                       SizedBox(height: 40,),
                       Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text("  EGP ",style: TextStyle(fontSize: 30,color: Colors.black ,fontWeight: FontWeight.bold)),
                           Text('$price1',style: TextStyle(fontSize: 30,color: Colors.yellow ,fontWeight: FontWeight.bold)),
    
    
                           
                         
                       
    
            ],
            ),
           SizedBox(height: 30,),
          
              Container(
                
                //  padding: EdgeInsets.all(20),
                  width: 200,
                  height: 50,
                   decoration: BoxDecoration(
                      boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                )
            ],
                     borderRadius: BorderRadius.circular(10),
                  color: Colors.white
             ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed:(){_counter(0);}, icon: Icon(Icons.remove,color: Colors.yellow,),),
                      Text('$_count'),
                       IconButton(onPressed: (){
                      _counter(1);
                      }, icon: Icon(Icons.add,color: Colors.yellow),),
                  

                ],
              )
            ),
        Column(
          children: [
          ...topping.map((t){
            return SizedBox(
             width: 2000,
     child: Container(
    
     padding: EdgeInsets.all(10),
     child: 
      
       CheckboxListTile(value: t.value,
          activeColor: Colors.green,
          title: Text(t.name,style: TextStyle(fontSize: 20,color: Colors.red ,fontWeight: FontWeight.bold) ),
        
          onChanged:(bool? newValue){
        setState(() {
          toppingprice =t.price;
          toppingname =t.name;
           t.value= newValue!;
      // price1+= t.price!;
        });}
        
        ),
       
     
   ),
            );

          }).toList()
      ],)
      
        
    
,
  
 SizedBox(height: 60,),

     Container(
           padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
  decoration: BoxDecoration(
    borderRadius:  BorderRadius.circular(10) ,
    
    color:  Colors.red,
    shape: BoxShape.rectangle,
  ),
  child: TextButton(
    
    child: Text("DONE",style: TextStyle(fontSize: 15,color: Colors.white)),
    onPressed: () {
      print (price1);
      print(toppingprice);
    dynamic c =cart(snack_name: sname1, topping_name: toppingname, price: price1+toppingprice,snack_url: surl1,quantiity: _count);
      button1(context,c);},
  ),
),

          ]
      ),
      )
      
    );

   
  }
}