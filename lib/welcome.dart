

import 'package:flutter/material.dart';

import 'home.dart';
class welcome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return welcomestate();
  }

}
class welcomestate extends State<welcome>{
  void button1 (BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (_){
      return home();
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
           gradient: LinearGradient(
             colors: [
               Colors.red[900]!.withOpacity(0.9),
               Colors.red.withOpacity(0.7)
           ],
           begin:Alignment.bottomCenter, 
           end:Alignment.topCenter


           ),
      image: DecorationImage(
        
       fit: BoxFit.fitHeight,
       // colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
        image: Image.asset('assets/images/App-K.png').image,
      ),
   ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
             //SizedBox(height: 50),
            Container(
              child: Image.asset("assets/images/snack x.png",width: 400,height: 200,),
              
            ),
            //SizedBox(height: 50),
            Container(
              child:Column(
                children: [
                  Text("Book your favorite movie ",style: TextStyle(fontSize: 20,color: Colors.white),),
                  Text("anytime, anywhere, with the  ",style: TextStyle(fontSize: 20,color: Colors.white)),
                  Text("snacks already in hand,",style: TextStyle(fontSize: 20,color: Colors.white)),
                  Text("hassle-free!",style: TextStyle(fontSize: 20,color: Colors.white)),
                ],
              ),
                      
                       
                        

            ),
         Container(
           padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
  decoration: BoxDecoration(
    borderRadius:  BorderRadius.circular(10) ,
    border: Border.all(color: Colors.yellow, width: 2),
    color:  Colors.red[900]!.withOpacity(0),
    shape: BoxShape.rectangle,
  ),
  child: TextButton(
    
    child: Text("Continue",style: TextStyle(fontSize: 15,color: Colors.yellow)),
    onPressed: () {button1(context);},
  ),
),
      ],
      ),
    ),
   );
  }

}