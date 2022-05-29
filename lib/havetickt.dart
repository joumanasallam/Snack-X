import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homepage2.dart';

class haveticket extends StatefulWidget {
  @override
  _haveticketState createState() => _haveticketState();
}

class _haveticketState extends State<haveticket> {
   void button1 (BuildContext context, ){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
      return homepage2();
    }
    ));
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     body: Container(
      
      height: double.infinity,
      width: double.infinity,
         decoration: BoxDecoration(
          
      image: DecorationImage(
        
       fit: BoxFit.fitHeight,
       // colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
        image: Image.asset('assets/images/App-K.png').image,
      ),
   ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          
            Container(
              padding: EdgeInsets.all(20),
              child:Column(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Container(
              child: Image.asset("assets/images/snack x.png",width: 400,height: 200,),
              
            ),
            SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have Ticket ",style: TextStyle(fontSize: 20,color: Colors.black ,fontWeight: FontWeight.bold)),
                      
                      Text("Number",style: TextStyle(fontSize: 20,color: Colors.red ,fontWeight: FontWeight.bold))
                    ],
                  ),
                  SizedBox(height: 40,),
                  Text("  Enter ticket number and order your  favorite snacks right now without  waiting in line ",style: TextStyle(fontSize:20)),
                 
                   SizedBox(height:40,),

                    Container(
             child:Column(
               children: [
                  Container(
      height: 45,
               decoration: BoxDecoration(
               color: Colors.grey[300],
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10) ,
              
            ),
              padding: EdgeInsets.all(10),
             margin: EdgeInsets.all(20),
           child: TextField(
             
             style:TextStyle(color:Colors.grey),
             decoration:InputDecoration(
        
               hintText:"Ticket Number",
               hintStyle: TextStyle(fontSize: 15),
              border: InputBorder.none
              
             ) ,
             keyboardType: TextInputType.text,
             ),
            
             ),
               ]
             ),
      ),
            Container(
           padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
  decoration: BoxDecoration(
    borderRadius:  BorderRadius.circular(10) ,
    
    color:  Colors.red,
    shape: BoxShape.rectangle,
  ),
  child: TextButton(
    
    child: Text("GO",style: TextStyle(fontSize: 15,color: Colors.white)),
    onPressed: () {button1(context);},
  ),
),
                ],
              ),
                      
           

            ),
        
      ],
      ),
    ),
    
   );
  }
}