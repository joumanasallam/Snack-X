import 'package:flutter/material.dart';

import 'appbar.dart';
class image extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _imagestate();
  }

}
class _imagestate extends State<image>{
  static const Widget appName = const Text(
    'VOX CINEMA',
    style: const TextStyle(color: Colors.red, fontSize: 48, fontWeight: FontWeight.bold),
  );
  DateTime date1=DateTime.now();
  void _datepicker(){
    showDatePicker(
      context: context,
       initialDate: DateTime.now(), 
       firstDate: DateTime.now(),
        lastDate: DateTime(2050),).then(
          (value) {
           if (value==null) return;
           else setState(() {
             date1=value;
           });
        });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     drawer: Drawer(
   child: 
   Container(
     color: Colors.yellow,
     child: 
     Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
         
         TextButton.icon(
               style: ButtonStyle(
                 foregroundColor: MaterialStateProperty.all(Colors.black),
                 padding:  MaterialStateProperty.all(EdgeInsets.fromLTRB(20,0,20,0)),


                  ),
               onPressed: (){}, 
               icon: Icon(Icons.settings), 
               label: const Text("APP SETTING")),
               TextButton.icon(
               style: ButtonStyle(
                 foregroundColor: MaterialStateProperty.all(Colors.black),
                 padding:  MaterialStateProperty.all(EdgeInsets.fromLTRB(20,0,20,0)),


                  ),
               onPressed: (){}, 
               icon: Icon(Icons.airplane_ticket), 
               label: const Text("My Tickets")),
               TextButton.icon(
               style: ButtonStyle(
                 foregroundColor: MaterialStateProperty.all(Colors.black),
                 padding:  MaterialStateProperty.all(EdgeInsets.fromLTRB(20,0,20,0)),


                  ),
               onPressed: (){}, 
               icon: Icon(Icons.point_of_sale), 
               label: const Text("My Points")),
               TextButton.icon(
               style: ButtonStyle(
                 foregroundColor: MaterialStateProperty.all(Colors.black),
                 padding:  MaterialStateProperty.all(EdgeInsets.fromLTRB(20,0,20,0)),


                  ),
               onPressed: (){}, 
               icon: Icon(Icons.info), 
               label: const Text("About Us")),
               TextButton.icon(
               style: ButtonStyle(
                 foregroundColor: MaterialStateProperty.all(Colors.black),
                 padding:  MaterialStateProperty.all(EdgeInsets.fromLTRB(20,0,20,0)),


                  ),
               onPressed: (){}, 
               icon: Icon(Icons.exit_to_app), 
               label: const Text("Log out")),


             ],
     ),
   )
     ),
     appBar:CustomAppBar(),
   body: Container(
     child: SingleChildScrollView(
            child: Container(
         child: Center(
           
           child: Column(
             
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
             appName,
            Image.asset("assets/images/download (1).png",width: 200,height: 100,),
             SizedBox(height: 100),
                ElevatedButton.icon(
               style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
                 foregroundColor: MaterialStateProperty.all(Colors.black),
                 padding:  MaterialStateProperty.all(EdgeInsets.fromLTRB(20,0,20,0)),


                  ),
               onPressed:_datepicker, 
              
               label: const Text("Enter Date"),
                icon: Icon(Icons.arrow_drop_down_outlined, 
                )
                  ),
                  Text(" your date is $date1")
                    ],
                  ),
         ),
       ),
     ),
     height: double.infinity,
     width: double.infinity,
   
     decoration: BoxDecoration(
      image: DecorationImage(
        
       fit: BoxFit.fitWidth,
        image: Image.asset('assets/images/App-K.png').image,
      ),
   ),
   )
   );
  }

}