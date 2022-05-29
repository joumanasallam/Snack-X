import 'package:flutter/material.dart';
import 'package:ll/seatwidget.dart';

import 'appbar.dart';
import 'navdrawer.dart';

class movie_datails extends StatefulWidget {
  String cname="" ;
  String curl="";
  String mname="";
  String murl="";
  movie_datails(this.cname,this.curl,this.mname,this.murl);
  @override
  _movie_datailsState createState() => _movie_datailsState(cname,curl,mname,murl);
}

class _movie_datailsState extends State<movie_datails> {
 String cname="" ;
  String curl="";
  String mname="";
  String murl="";
  _movie_datailsState(this.cname,this.curl,this.mname,this.murl);
  void button1 (BuildContext context){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
      return seat();
    }
    ));
    }
  List time=["12:00 PM","2:00 PM","4:00 PM","6:00 PM","9:00 PM","12:00 AM","12:00 PM","2:00 PM","4:00 PM","6:00 PM","9:00 PM","12:00 AM"];
  Widget timee (String s){
    return InkWell(
      child:
       Container(
          padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
     borderRadius: BorderRadius.circular(15),
        border: Border.all(
            width: 2.0,
            color: Colors.black,
            style: BorderStyle.solid
            
        ),
    ),
    child: Text(
        s,style: TextStyle(fontSize: 20,color: Colors.black )
    ),
),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  NavDrawer(),
      appBar:CustomAppBar(), 
      body: SingleChildScrollView(
        child: 
        Column(
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
                  image: Image.asset(murl).image,
                ),
         ),
      
                   ),
                   SizedBox(height: 40,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("  Please select showtime:",style: TextStyle(fontSize: 20,color: Colors.red ,fontWeight: FontWeight.bold)),
                         Column(children:[ 
                         Image.asset(curl,width: 100,height: 100,),
                       Text(cname,style: TextStyle(fontSize: 20,color: Colors.black ,fontWeight: FontWeight.bold)),


                         ],
                     
                   )

        ],
        ),
       SizedBox(height: 30,),
 SizedBox(
             height:200,
             width: 300,
              
                 child: GridView.builder(
                   itemCount: time.length,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 3,
                     mainAxisSpacing: 10,
                     crossAxisSpacing: 10)
                     ,
                   itemBuilder: (context, index) {
                    final item=time[index];
                     return
                   timee(item);
                   },
                 
                 ),
              ),
               SizedBox(height: 30,),
                Container(
           padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
  decoration: BoxDecoration(
    borderRadius:  BorderRadius.circular(10) ,
    
    color:  Colors.red,
    shape: BoxShape.rectangle,
  ),
  child: TextButton(
    
    child: Text("Proceed to Seatings",style: TextStyle(fontSize: 15,color: Colors.white)),
    onPressed: () {button1(context);},
  ),
),
SizedBox(height: 10,),
 Container(
           padding: EdgeInsets.fromLTRB(120, 0, 120, 0),
  decoration: BoxDecoration(
    borderRadius:  BorderRadius.circular(10) ,
    border: Border.all(color: Colors.red, width: 2),
    color:  Colors.red[900]!.withOpacity(0),
    shape: BoxShape.rectangle,
  ),
  child: TextButton(
    
    child: Text("BACK",style: TextStyle(fontSize: 15,color: Colors.red)),
    onPressed: () {Navigator.of(context).pop();},
  ),
),
SizedBox(height: 30,),
          ]
      ),
      )
    );
  }
}