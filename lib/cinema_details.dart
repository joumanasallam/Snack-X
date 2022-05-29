import 'package:flutter/material.dart';
import 'package:ll/appbar.dart';
import 'package:ll/reg.dart';

import 'movie_datails.dart';


class cinema_details extends StatefulWidget{
 DateTime date;
String cinema_name;
String cinema_url;

  cinema_details(this.date ,this.cinema_name ,this.cinema_url);
  @override
  State<StatefulWidget> createState() {
    return cinemastate(date,cinema_name,cinema_url);
  }

}
class cinemastate extends State<cinema_details>{
   void button1 (BuildContext context,String cname,String curl,String mname,String murl){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
      return movie_datails(cname,curl,mname,murl);
    }
    ));
    }
    DateTime date1;
String cinema_name1 ;
String cinema_url1 ;

 cinemastate(this.date1 ,this.cinema_name1 ,this.cinema_url1);
  List movies =[reg( cinema_name:"vox", cinema_url:"assets/images/download (1).png" , movie_name:"spider man", movie_url: "assets/images/111111.jpg", date: DateTime.now()),
  reg( cinema_name:"vox", cinema_url:"assets/images/download (1).png" , movie_name:"spider man", movie_url: "assets/images/111111.jpg", date: DateTime.utc(2022,10,1)),
  reg( cinema_name:"vox", cinema_url:"assets/images/download (1).png" , movie_name:"L-badla", movie_url: "assets/images/BKZ4_GAzfG1ByahBbmhoggHaKZ.jpg", date: DateTime.utc(2022,10,1)),
  reg( cinema_name:"vox", cinema_url:"assets/images/download (1).png" , movie_name:"CITY RUIN", movie_url: "assets/images/OIP (1).jpg", date:  DateTime.utc(2022,10,1)),
  reg( cinema_name:"vox", cinema_url:"assets/images/download (1).png" , movie_name:"ZHIMAR", movie_url: "assets/images/OIP (2).jpg", date:  DateTime.utc(2022,10,1)),
  reg( cinema_name:"vox", cinema_url:"assets/images/download (1).png" , movie_name:"NINJA", movie_url: "assets/images/R.jpg", date:  DateTime.utc(2022,10,1)),
  reg( cinema_name:"vox", cinema_url:"assets/images/download (1).png" , movie_name:"spider man", movie_url: "assets/images/111111.jpg", date: DateTime.now()),
  reg( cinema_name:"vox", cinema_url:"assets/images/download (1).png" , movie_name:"spider man", movie_url: "assets/images/111111.jpg", date: DateTime.now()),
  reg( cinema_name:"vox", cinema_url:"assets/images/download (1).png" , movie_name:"spider man", movie_url: "assets/images/111111.jpg", date: DateTime.now()),
  reg( cinema_name:"vox", cinema_url:"assets/images/download (1).png" , movie_name:"spider man", movie_url: "assets/images/111111.jpg", date: DateTime.now()),
  reg( cinema_name:"vox", cinema_url:"assets/images/download (1).png" , movie_name:"spider man", movie_url: "assets/images/111111.jpg", date: DateTime.now())
  


];
  Widget monvieline (String murl ,String mname ,String curl ,String cname){
    return InkWell(
          child: Container(
        child: Stack(
  alignment: Alignment.centerRight, // Center of Top
  children: <Widget>[
  
         Container(
                          
                          height: 130,
                          width: 350,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.all(10),
                          child: Text(mname,style: TextStyle(fontSize: 20,color: Colors.yellow ,fontWeight: FontWeight.bold)),
                        
                        decoration: BoxDecoration(
                           gradient: LinearGradient(
               colors: [
                 Colors.red[900]!.withOpacity(0.9),
                 Colors.red.withOpacity(0.7)
             ],
             begin:Alignment.bottomCenter, 
             end:Alignment.topCenter


             ),
                          color: Colors.red.withOpacity(0.8),
                          boxShadow: [BoxShadow(
                  color: Colors.grey.withOpacity(0.5), //color of shadow
                spreadRadius: 5, //spread radius
               blurRadius: 7, // blur radius
                    offset: Offset(0, 2), // changes position of shadow
                      //first paramerter of offset is left-right
   //second parameter is top to down
            ),],
                           shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(100) ,
                        
                    
             ),
          
                       ),
 

                        Container(
                          
                          height: 140,
                          width: 150,
                          child: Text(""),
                        
                        decoration: BoxDecoration(
                         
                           shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(100) ,
                        
                    image: DecorationImage(
                     
                     fit: BoxFit.fitHeight,
                      image: Image.asset(murl).image,
                    ),
             ),
          
                       ),
               ],
             ),
             
      ),
      onTap: (){button1(context,cname,curl,mname,murl);},
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Text(cinema_name1,style: TextStyle(fontSize: 30,color: Colors.red ,fontWeight: FontWeight.bold)),
             
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
  SizedBox(
      height:500,
             width: 2000,
      child: ListView.builder(
        //padding: EdgeInsets.fromLTRB(0, 100, 0, 100),
         itemCount: movies.length,
        itemBuilder:(context, index) {
                      final item=movies[index];
                     if (item.cinema_name.compareTo(cinema_name1)==0 ){
                        print (item.cinema_name.compareTo(cinema_name1));
                        print(cinema_name1);
                        print(item.date);
                        print(date1);
                       return
                     monvieline(item.movie_url, item.movie_name,item.cinema_url,item.cinema_name);
                   }else return monvieline("assets/images/OIP (3).png", "not found ","","");
        
    },
 ),
  ),
  SizedBox(height: 20,),
   Divider(
              color: Colors.grey[350],
              height: 20,
              thickness: 1,
              indent: 0,
              endIndent: 0,
            ),
  SizedBox(height: 20,),
  

           ]
      ),
      
height: 2000,
    ),
    )
    );
  }

}