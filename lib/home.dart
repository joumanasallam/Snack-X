import 'package:flutter/material.dart';
import 'package:ll/first.dart';
import 'package:ll/havetickt.dart';
import 'package:ll/signup.dart';

class home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return homestate();
  }

}
class homestate extends State<home>{
  
  @override
  Widget build(BuildContext context) {
      void button3 (BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (_){
      return haveticket();
    }
    ));
    }
    void button1 (BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (_){
      return signup();
    }
    ));
    }
    void button2 (BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (_){
      return first();
    }
    ));
    }
   return Scaffold(
     body : Container(
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
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     children: [
     Container(
              child: Image.asset("assets/images/snack x.png",width: 400,height: 200,),
              
            ),
            Container(
              child: Text("WELCOME!", style: TextStyle(fontSize: 25,color: Colors.black),),
            ),
            Container(
             child: Column(
               children: [
                  Container(
           padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
  decoration: BoxDecoration(
    borderRadius:  BorderRadius.circular(10) ,
    border: Border.all(color: Colors.red, width: 2),
    color:  Colors.red,
    shape: BoxShape.rectangle,
  ),
  child: TextButton(
    
    child: Text("Sign Up",style: TextStyle(fontSize: 15,color: Colors.white)),
    onPressed: () {button1(context);},
  ),
),
      SizedBox(height: 10,)  ,   
             Container(
           padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
  decoration: BoxDecoration(
    borderRadius:  BorderRadius.circular(10) ,
    border: Border.all(color: Colors.red, width: 2),
    color:  Colors.red[900]!.withOpacity(0),
    shape: BoxShape.rectangle,
  ),
  child: TextButton(
    
    child: Text("Sign In",style: TextStyle(fontSize: 15,color: Colors.red)),
    onPressed: () {button2(context);},
  ),
),
               ]
            ),
   ),
    Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("Already have ticket?",style: TextStyle(color:Colors.grey),),
        InkWell(
                  child: Text("Enter Ticket Number",style: TextStyle(color:Colors.red)
          ),
          onTap: (){button3(context);},
        )
      ],

      )
    )
               ],
             )
              

   ),

     );
   
  }
  
}