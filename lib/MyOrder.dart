import 'package:flutter/material.dart';
import 'package:ll/Cart.dart';

class MyOrder extends StatefulWidget {
  @override
  _MyOrderState createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  List l=[cart(snack_name: "pop corn", topping_name: "caramel", price: 35, snack_url: "assets/images/popcorn-corn-pop-box-bucket-cinema.jpg", quantiity: 5)];
  @override
  Widget build(BuildContext context) {
    Widget snackrow(String sname ,String surl , dynamic price ,dynamic c){
      if (sname.compareTo("")==0) return Container();
      else return  Container(
        child: Column(
          children: [
            Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                         Text('$sname'+"X"+'$c',style: TextStyle(fontSize: 20,color: Colors.red )),
                         SizedBox(height: 10,),
                         Text(" EGP"+'$price',style: TextStyle(fontSize: 20,color: Colors.yellow )),
                         ],
                       ),
                       Container(
                            
                            height: 70,
                            width: 70,
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
                      borderRadius: BorderRadius.circular(20) ,
                          
                      image: DecorationImage(
                       
                       fit: BoxFit.fitHeight,
                        image: Image.asset(surl).image,
                      ),
               ),
            
                         ),
                     ],
                   ),
                   SizedBox(height:10 ,),
                   Divider(
          color: Colors.grey[200],
          height: 20,
          thickness: 2,
          indent: 10,
          endIndent: 10,
        ),
          ],
        ),
      


      );
    }
    return Scaffold(
      body: SingleChildScrollView(child: 
      Container(
        padding :EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             SizedBox(height: 40,),  
      Text("Your Order ",style: TextStyle(fontSize: 40,color: Colors.black ,fontWeight: FontWeight.bold),),
       SizedBox(height: 40,),  
         Container(
           padding:EdgeInsets.all(15), 
           color: Colors.grey[100],
           child: 
           Column(
             children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
       Text("Order Date ",style: TextStyle(fontSize: 15,color: Colors.black ),),

      Text("17/5/2022 ",style: TextStyle(fontSize: 15,color: Colors.black ),),

               ],
             ),
             Column(
                              mainAxisAlignment: MainAxisAlignment.center,

               children: [
         Text("Order Number ",style: TextStyle(fontSize: 15,color: Colors.black ),),

      Text("1234569874 ",style: TextStyle(fontSize: 15,color: Colors.black ),),

               ],
             ),
             Column(
           mainAxisAlignment: MainAxisAlignment.center,

               children: [
        Text("Order State",style: TextStyle(fontSize: 15,color: Colors.black ),),

      Text("Preparing ",style: TextStyle(fontSize: 15,color: Colors.black ),),

               ],
             )

             ],
           )
           


,

           Divider(
          color: Colors.grey[200],
          height: 20,
          thickness: 2,
          indent: 10,
          endIndent: 10,
        ),
              Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                  Text("Ticket",style: TextStyle(fontSize: 30,color: Colors.black )),
                   Text(" Details:",style: TextStyle(fontSize: 30,color: Colors.yellow )),
               ],
             ),
             SizedBox(height: 30,),
             Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

               children: [
        Column(
          children: [
            Text("3x tickets - Movie one",style: TextStyle(fontSize: 20,color: Colors.black )),
            Text("D3-D2-D1",style: TextStyle(fontSize: 10,color: Colors.grey )),

          ],
        ),Container(
          child: Column(
            children: [
 Container(
                      
                      height: 70,
                      width: 70,
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
                borderRadius: BorderRadius.circular(20) ,
                    
                image: DecorationImage(
                 
                 fit: BoxFit.fitHeight,
                  image: Image.asset("assets/images/download (1).png").image
                ),
         ),
      
                   ),

       Text("vox",style: TextStyle(fontSize: 20,color: Colors.black )),

            ],
          ),
        )
      

               ],
             ),
              SizedBox(
      height:100,
             width: 2000,
      child: ListView.builder(
         itemCount: l.length,
        itemBuilder:(context, index) {
                      final item=l[index];
                   
               

                      return snackrow(item.snack_name, item.snack_url,item.price,item.quantiity);
        
    },
 ),
  ),

SizedBox(height: 40,),
    Container(
           padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
  decoration: BoxDecoration(
    borderRadius:  BorderRadius.circular(10) ,
    
    color:  Colors.red,
    shape: BoxShape.rectangle,
  ),
  child: TextButton(
    
    child: Text("Cancel",style: TextStyle(fontSize: 15,color: Colors.white)),
    onPressed: () {},
  ),
),


SizedBox(height: 20,),


 Container(
           padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
  decoration: BoxDecoration(
    borderRadius:  BorderRadius.circular(10) ,
    
    color:  Colors.red,
    shape: BoxShape.rectangle,
  ),
  child: TextButton(
    
    child: Text("Back ",style: TextStyle(fontSize: 15,color: Colors.white)),
    onPressed: () {Navigator.of(context).pop();},
  ),
),
           ],
           ),
        
                      
     ),
       

         SizedBox(height: 40,),  

          ],
        ),
      )),
    );
  }
}