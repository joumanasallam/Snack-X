import 'package:flutter/material.dart';

import 'appbar.dart';
import 'end.dart';
import 'navdrawer.dart';

class OrderCart extends StatefulWidget {
  List l=[];
    OrderCart( this.l);
  @override
  _OrderCartState createState() => _OrderCartState(l);
}

class _OrderCartState extends State<OrderCart> {
  List l=[];
  dynamic  cost =0;
  dynamic point =100;

    _OrderCartState ( this.l);
    
  void button1 (BuildContext context){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
      return end();
    }
    ));
    }
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
    dynamic _count=0;
     void _counter (int x){
    if( x==0){
      setState(() {
                         _count=_count+1;
                        
                       });
    }
  else 
  {
      setState(() {
        if (_count!=0) 
        _count=_count-1;
                         
                       });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
       drawer:  NavDrawer(),
     appBar: CustomAppBar(),
     body: SingleChildScrollView(
       child: Container(
         padding: EdgeInsets.all(10),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                  Text("Review Your",style: TextStyle(fontSize: 30,color: Colors.black )),
                   Text("Order",style: TextStyle(fontSize: 30,color: Colors.red )),
               ],
             ),
             SizedBox(height: 30,),
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
                      
                      height: 100,
                      width: 100,
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
             SizedBox(height: 30,),
               Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                  Text("Snacks",style: TextStyle(fontSize: 30,color: Colors.black )),
                   Text(" Details:",style: TextStyle(fontSize: 30,color: Colors.yellow )),
               ],
             ),

            

             
 SizedBox(
      height:300,
             width: 2000,
      child: ListView.builder(
         itemCount: l.length,
        itemBuilder:(context, index) {
                      final item=l[index];
                   
               

                      return snackrow(item.snack_name, item.snack_url,item.price,item.quantiity);
        
    },
 ),
  ),
      SizedBox(height: 10,),




 Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                  Text("Payment ",style: TextStyle(fontSize: 30,color: Colors.black )),
                   Text(" Method:",style: TextStyle(fontSize: 30,color: Colors.yellow )),
               ],
             ),

                   SizedBox(height: 10,),
 Column(
              children: [
                  
                 

                  ListTile(
                     title: Text("Vodafone Cash"),
                     leading: Radio(
                       activeColor: Colors.yellow,
                       value:0, 
                       groupValue: 1, 
                       onChanged: (value){
                          setState(() {
                          });
                       }),
                  ),

                  ListTile(
                     title: Text("Credit / Debit Card"),
                     leading: Radio(
              activeColor: Colors.yellow,

                       value: 1, 
                       groupValue:1, 
                       onChanged: (value){
                          setState(() {
                          });
                       }),
                  ),

                  ListTile(
                     title: Text("Fawry"),
                     leading: Radio(
                            activeColor: Colors.yellow,

                       value: 2, 
                       groupValue: 1, 
                       onChanged: (value){
                          setState(() {
                          });
                       }),
                  )


              ],
            ),



      SizedBox(height: 20,),

Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                  Text("Use  ",style: TextStyle(fontSize: 30,color: Colors.black )),
                   Text(" Points:",style: TextStyle(fontSize: 30,color: Colors.yellow )),
               ],
             ),

                   SizedBox(height: 10,),


Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                  Text("You Have   ",style: TextStyle(fontSize: 30,color: Colors.black )),
                   Text('$point'+" Points:",style: TextStyle(fontSize: 30,color: Colors.yellow )),
               ],
             ),
         Container(
                
                //  padding: EdgeInsets.all(20),
                  width: 200,
                  height: 50,
                   decoration: BoxDecoration(
                      boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                )
            ],
                     borderRadius: BorderRadius.circular(10),
                  color: Colors.white
             ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed:(){_counter(1);}, icon: Icon(Icons.remove_circle,color: Colors.yellow,),),
                      Text('$_count'),
                       IconButton(onPressed: (){
                      _counter(0);
                      }, icon: Icon(Icons.add_circle_rounded,color: Colors.yellow),),
                  

                ],
              )
            ),
  Divider(
          color: Colors.grey[200],
          height: 20,
          thickness: 2,
          indent: 10,
          endIndent: 10,
        ),

     Column(
        children: [
        Row(
          children: [
            Text("Snacks Subtotal",style: TextStyle(fontSize: 20,color: Colors.black )),
            SizedBox(width: 40,),
             Text("$cost",style: TextStyle(fontSize: 20,color: Colors.black )),

          ],
        ),
  SizedBox(height: 20,),
            Row(
              children: [
                Text("Service / Tax Fees ",style: TextStyle(fontSize: 20,color: Colors.black )),
                 SizedBox(width: 40,),
              Text("${cost*0.10}",style: TextStyle(fontSize: 20,color: Colors.black )),

  
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text("Total Amount",style: TextStyle(fontSize: 20,color: Colors.black )),
                  SizedBox(width: 40,),
              Text("${(cost*0.14)+cost}",style: TextStyle(fontSize: 20,color: Colors.black )),

              ],
            ),

        ],
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
    
    child: Text("Place Your Order Now",style: TextStyle(fontSize: 15,color: Colors.white)),
    onPressed: () {
button1(context);
    },
  ),
),
        SizedBox(height: 40,),

           ],
         ),
       ),
     ),
    );
  }

}