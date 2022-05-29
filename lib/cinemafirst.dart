import 'package:flutter/material.dart';
import 'appbar.dart';
import 'cinema_details.dart';
import 'navdrawer.dart';

class cinemafirst extends StatefulWidget {
  String s;
  String t;
  cinemafirst(this.s, this.t);


  @override
  _cinemafirstState createState() => _cinemafirstState(s,t);
}

class _cinemafirstState extends State<cinemafirst> {
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
String url;
String name ;
  _cinemafirstState(this.url ,this.name);
   void button1 (BuildContext context, String name,DateTime d,String url){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
      return cinema_details(d,name,url);
    }
    ));
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  NavDrawer(),
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text(name,style: TextStyle(fontSize: 40,color: Colors.red ,fontWeight: FontWeight.bold)),
                SizedBox(height: 20,),
                 Image.asset(url,width: 400,height: 200,),
                  SizedBox(height: 20,),
                  Row(
                  children: [
               Text("Cinema ",style: TextStyle(fontSize: 30,color: Colors.black ,fontWeight: FontWeight.bold)),
                Text("Details",style: TextStyle(fontSize: 30,color: Colors.red ,fontWeight: FontWeight.bold)),
             
               ],
             ),
                 SizedBox(height: 10,),
             Container(
               child:Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",style: TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.5) )
             ),
             ),  SizedBox(height: 20,),
                  Row(
                  children: [
               Text("Cinema ",style: TextStyle(fontSize: 30,color: Colors.black ,fontWeight: FontWeight.bold)),
                Text("Location",style: TextStyle(fontSize: 30,color: Colors.red ,fontWeight: FontWeight.bold)),
             
               ],
             ),
              SizedBox(height: 50,),
               Row(
                  children: [
               Text("Select",style: TextStyle(fontSize: 30,color: Colors.black ,fontWeight: FontWeight.bold)),
                Text("Date",style: TextStyle(fontSize: 30,color: Colors.red ,fontWeight: FontWeight.bold)),
             
               ],
             ),
              SizedBox(height: 10,),
               ElevatedButton.icon(
               style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all(Colors.red),
                 foregroundColor: MaterialStateProperty.all(Colors.white),
                 padding:  MaterialStateProperty.all(EdgeInsets.fromLTRB(80,10,80,10)),


                  ),
               onPressed:_datepicker, 
              
               label: const Text("Select Date",style: TextStyle(fontSize: 20,)),
                icon: Icon(Icons.arrow_drop_down_outlined, 
                )
                  ),

                   SizedBox(height: 40,),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
               Text("You Select:  ",style: TextStyle(fontSize: 20,color: Colors.black ,fontWeight: FontWeight.bold)),
                Text("$date1",style: TextStyle(fontSize: 15,color: Colors.red ,fontWeight: FontWeight.bold)),
             
               ],
             ),
              SizedBox(height: 40,),
              Container(
           padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
  decoration: BoxDecoration(
    borderRadius:  BorderRadius.circular(10) ,
    border: Border.all(color: Colors.yellow, width: 2),
    color:  Colors.red[900]!.withOpacity(0),
    shape: BoxShape.rectangle,
  ),
  child: TextButton(
    
    child: Text("Confirm",style: TextStyle(fontSize: 20,color: Colors.red)),
    onPressed: (){button1(context, name, date1,url);},
  ),
),
            ],
          ),
        )
      ,),
      
    );
  }
}