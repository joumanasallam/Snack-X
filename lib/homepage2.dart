import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ll/monie.dart';
import 'package:ll/snack.dart';

import 'appbar.dart';
import 'cinema.dart';
import 'cinemafirst.dart';
import 'navdrawer.dart';

class homepage2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _homestate2();
  }

}
class _homestate2 extends State<homepage2>{
  List<cinema> li=[cinema(s:"assets/images/download (1).png" , x: "vox"),
  cinema(s:"assets/images/download (1).png" , x: "joumana"),
  cinema(s:"assets/images/download (1).png" , x: "vox"),
  cinema(s:"assets/images/download (1).png" , x: "vox"),
  cinema(s:"assets/images/download (1).png" , x: "vox"),
  cinema(s:"assets/images/download (1).png" , x: "vox"),
  cinema(s:"assets/images/download (1).png" , x: "vox"),
  cinema(s:"assets/images/download (1).png" , x: "vox"),
  ];
   List<snack> l2=[snack(surl: "assets/images/popcorn-corn-pop-box-bucket-cinema.jpg", sname: "snack1", sd: "popcorn",price: 30),
   snack(surl: "assets/images/popcorn-corn-pop-box-bucket-cinema.jpg", sname: "snack1", sd: "popcorn",price: 30),
   snack(surl: "assets/images/popcorn-corn-pop-box-bucket-cinema.jpg", sname: "snack1", sd: "popcorn",price: 30),
   snack(surl: "assets/images/popcorn-corn-pop-box-bucket-cinema.jpg", sname: "snack1", sd: "popcorn",price: 30),
      snack(surl: "assets/images/popcorn-corn-pop-box-bucket-cinema.jpg", sname: "snack1", sd: "popcorn",price: 30),

   snack(surl: "assets/images/popcorn-corn-pop-box-bucket-cinema.jpg", sname: "snack1", sd: "popcorn",price: 30),

   snack(surl: "assets/images/popcorn-corn-pop-box-bucket-cinema.jpg", sname: "snack1", sd: "popcorn",price: 30),

   snack(surl: "assets/images/popcorn-corn-pop-box-bucket-cinema.jpg", sname: "snack1", sd: "popcorn",price: 30),

   snack(surl: "assets/images/popcorn-corn-pop-box-bucket-cinema.jpg", sname: "snack1", sd: "popcorn",price: 30),

   snack(surl: "assets/images/popcorn-corn-pop-box-bucket-cinema.jpg", sname: "snack1", sd: "popcorn",price: 30),

   ]  ;  
    List moviessoon =[movie(imageurl: "assets/images/111111.jpg", name: "movie one"),
   movie(imageurl: "assets/images/111111.jpg", name: "movie one"),
   movie(imageurl: "assets/images/111111.jpg", name: "movie one"),
   movie(imageurl: "assets/images/111111.jpg", name: "movie one"),
   movie(imageurl: "assets/images/111111.jpg", name: "movie one"),];
   List movies =[movie(imageurl: "assets/images/111111.jpg", name: "movie one"),
   movie(imageurl: "assets/images/111111.jpg", name: "movie one"),
   movie(imageurl: "assets/images/111111.jpg", name: "movie one"),
   movie(imageurl: "assets/images/111111.jpg", name: "movie one"),
   movie(imageurl: "assets/images/111111.jpg", name: "movie one"),];
    void button1 (BuildContext context,String url , String name ){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
      return cinemafirst(url, name);
    }
    ));
    }
   Widget movies1 (String imageurl, String name  ){
     return  Row(
             children: [
               Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                    Container(
                      
                      height: 140,
                      width: 150,
                      child: Text(""),
                    
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
              color: Colors.grey.withOpacity(0.5), //color of shadow
            spreadRadius: 5, //spread radius
           blurRadius: 7, // blur radius
                offset: Offset(0, 2), // changes position of shadow
                  //first paramerter of offset is left-right
   //second parameter is top to down
        ),],
                       shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(50) ,
                    
                image: DecorationImage(
                 
                 fit: BoxFit.fitHeight,
                  image: Image.asset(imageurl).image,
                ),
         ),
      
                   ),
                   SizedBox(height: 10,),
                   Text(name,style: TextStyle(fontSize: 20),)

                 ],
               ),
             ],
           );
   }
    Widget snack1 (String surl ,String sname, String sd){
    return  Row(
      children: [
         Container(
           //  color: Colors.red.withOpacity(0.5),


           margin: EdgeInsets.all(0) ,
                 padding: EdgeInsets.all(0),
                 height: 37,
                 width: 100,
                 child: Column(
                   //mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                    
                   Text(sname,
                   ),
                   Text(sd, style: TextStyle(color: Colors.yellow),)
                 ],),
                  decoration: BoxDecoration(
                    
                  border: Border.all(
          color: Colors.black, //color of border
          width: 1, //width of border
        ),
              shape: BoxShape.rectangle,
             
              
            ),
               ),
               Container(
                 width: 50,
                  margin: EdgeInsets.all(0) ,
      child:  Image.asset(surl,width: 100,height: 60,),

               )
      ],
    );
    

  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     drawer:  NavDrawer(),
     appBar: CustomAppBar(),
     body: SingleChildScrollView(
       child: Container(
               padding: EdgeInsets.all(15),
               decoration: BoxDecoration(
                
            image: DecorationImage(
              
             fit: BoxFit.fitHeight,
              image: Image.asset('assets/images/App-K.png').image,
            ),
         ),
         child: Column(
           children: [
               Row(
             children: [
               Text("Welcome to Snack ",style: TextStyle(fontSize: 30,color: Colors.black ,fontWeight: FontWeight.bold),),
             Text("X",style: TextStyle(fontSize: 30,color: Colors.red ,fontWeight: FontWeight.bold),),

             ],
           ),
            Text("The next step for cinema experience",style: TextStyle(fontSize: 10,color: Colors.yellow ,fontWeight: FontWeight.bold),),

           SizedBox(height: 70,),
           Row(
             children: [
               Text("Available ",style: TextStyle(fontSize: 30,color: Colors.black ,fontWeight: FontWeight.bold)),
                Text("Cinemas",style: TextStyle(fontSize: 30,color: Colors.red ,fontWeight: FontWeight.bold)),
             ],
           ),
            SizedBox(height: 20,),
            Container(
                 child: SingleChildScrollView(
               scrollDirection: Axis.horizontal,

                        child: Row(
             children: [
               ...li.map((e){
              return Column(
              children: [
                 
                  
                   InkWell(
                     onTap: (){button1(context,e.s,e.x);},
                     child: Image.asset(e.s,width: 200,height: 100,)),
                 Text(e.x),

              ],
              );
               }) .toList(),
             ],
               ),
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
               Text("Need snacks between ",style: TextStyle(fontSize: 30,color: Colors.black ,fontWeight: FontWeight.bold),),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
              Text("your ",style: TextStyle(fontSize: 30,color: Colors.black ,fontWeight: FontWeight.bold),),
               Text("break? ",style: TextStyle(fontSize: 30,color: Colors.yellow ,fontWeight: FontWeight.bold),),

                 ],
               ),
              Text("here's a great and fast choice for your break snack",style: TextStyle(fontSize: 13,color: Colors.yellow )),
              SizedBox(height: 30,),
           SizedBox(
             height:200,
             width: 2000,
              
                 child: GridView.builder(
                   itemCount: l2.length,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          mainAxisExtent:70)
                     ,
                   itemBuilder: (context, index) {
                    final item=l2[index];
                     return
                   snack1(item.surl, item.sname, item.sd);
                   },
                 
                 ),
              ),
          SizedBox(height: 30,),
       Row(
         
             children: [
               Text("  Now ",style: TextStyle(fontSize: 30,color: Colors.black ,fontWeight: FontWeight.bold),),
             Text(" Showing",style: TextStyle(fontSize: 30,color: Colors.red ,fontWeight: FontWeight.bold),),

             ],
           ),
           SizedBox(height: 20,),
          SizedBox(
             height:300,
             width: 2000,
              
                 child: GridView.builder(
                   itemCount: movies.length,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          mainAxisExtent:200)
                     ,
                   itemBuilder: (context, index) {
                    final item=movies[index];
                     return
                   movies1(item.imageurl, item.name);
                   },
                 
                 ),
              ),
               SizedBox(height: 30,),
       Row(
         
             children: [
               Text("  Coming ",style: TextStyle(fontSize: 30,color: Colors.black ,fontWeight: FontWeight.bold),),
             Text(" Soon",style: TextStyle(fontSize: 30,color: Colors.red ,fontWeight: FontWeight.bold),),

             ],
           ),
           SizedBox(height: 20,),
            SizedBox(
             height:300,
             width: 2000,
              
                 child: GridView.builder(
                   itemCount: movies.length,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          mainAxisExtent:200)
                     ,
                   itemBuilder: (context, index) {
                    final item=moviessoon[index];
                     return
                   movies1(item.imageurl, item.name);
                   },
                 
                 ),
              ),
              SizedBox(height: 10,),
             
           ],
         ),
       ),
       ),
   );

  }
}
 