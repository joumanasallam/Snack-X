import 'package:flutter/material.dart';

import 'homepage2.dart';

class end extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _endstate();
  }
}
class _endstate  extends State<end>{
  
  void button1 (BuildContext context){
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
              child:Column(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Container(
              child: Image.asset("assets/images/snack x.png",width: 400,height: 200,),
              
            ),
                  Text("Your order",style: TextStyle(fontSize: 30,color: Colors.black ,fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("has been ",style: TextStyle(fontSize: 30,color: Colors.black ,fontWeight: FontWeight.bold)),
                      
                      Text("Confirmed",style: TextStyle(fontSize: 30,color: Colors.red ,fontWeight: FontWeight.bold))
                    ],
                  ),
                  SizedBox(height: 60,),
                  Text("Thank you for your purchase.",style: TextStyle(fontSize:20)),
                  Text("We are eager to see you!",style: TextStyle(fontSize:20)),
                   SizedBox(height: 60,),
            Container(
           padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
  decoration: BoxDecoration(
    borderRadius:  BorderRadius.circular(10) ,
    
    color:  Colors.red,
    shape: BoxShape.rectangle,
  ),
  child: TextButton(
    
    child: Text("Back to homepage",style: TextStyle(fontSize: 15,color: Colors.white)),
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