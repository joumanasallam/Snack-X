import 'package:flutter/material.dart';
import 'package:ll/appbar.dart';

class cinemadetails1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return cinema_State();
  }
}

class cinema_State extends State<cinemadetails1> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
    appBar: CustomAppBar(),
    body: SingleChildScrollView(
      child: Container(
         
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
                  children: [
               Text("Cinema ",style: TextStyle(fontSize: 30,color: Colors.black ,fontWeight: FontWeight.bold)),
                Text("one",style: TextStyle(fontSize: 30,color: Colors.red ,fontWeight: FontWeight.bold)),
             
               ],
             ),
             SizedBox(height: 30,),
              Container(
                 width: 150,
                  margin: EdgeInsets.all(0) ,
      child:  ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset("assets/images/download (1).png",width: 150,height: 60,)),

               ),
  SizedBox(height: 30,),
  Row(
           
                  children: [
               Text("Cinema ",style: TextStyle(fontSize: 30,color: Colors.black ,fontWeight: FontWeight.bold)),
                Text("Details",style: TextStyle(fontSize: 30,color: Colors.red ,fontWeight: FontWeight.bold)),
             
               ],
             ),
             Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur",
             style: TextStyle(color: Colors.grey),
             )


    ]
      ),
      
height: 2000,
    ),
    )
    );
  }

}
    
