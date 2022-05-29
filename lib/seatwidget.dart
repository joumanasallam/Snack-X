import'package:flutter/material.dart';
import 'package:ll/seating.dart';
import 'package:ll/snacks.dart';

import 'Cart.dart';
class seat extends StatefulWidget {
  @override
  _seatState createState() => _seatState();
}

class _seatState extends State<seat> {
   void button1 (BuildContext context){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
      return snacks(cart(snack_name: "", topping_name: "", price: 0,snack_url: "",quantiity: 0));
    }
    ));
    }
 bool x=true ;
 Widget seaticon1(String name,int  state,bool isele,int index) {
    Color c= Colors.grey[300]!;
     if (state ==1){
        c=Colors.red;
     }else if (state==2){
        c=Colors.blue;
     }
   return AnimatedContainer(
         child: Center(
            /* child: Icon(
           Icons.android,
           size: 100,
           color: _iselevated ? Colors.black : Colors.grey[300],
         ))*/),
         duration: const Duration(milliseconds: 200),
         width: 20,
         height: 20,
         decoration: BoxDecoration(
             color:c,
             borderRadius: BorderRadius.circular(1),
             boxShadow: isele
                 ? [
                     BoxShadow(
                       color: Colors.grey[500]!,
                       offset: const Offset(4, 4),
                       blurRadius: 15,
                       spreadRadius: 1,
                     ),
                     const BoxShadow(
                       color: Colors.white,
                       offset: Offset(-4, -4),
                       blurRadius: 15,
                       spreadRadius: 1,
                     ),
                   ]
                 : null),
   );
           
 }
 int count =0;
 double price =50;
   Widget seaticon(String name,int  state,bool isele,int index) {
     Color c= Colors.grey[300]!;
     if (state ==1){
        c=Colors.red;
     }else if (state==2){
        c=Colors.blue;
     }
   return Column(
children: [
   InkWell(
        child: AnimatedContainer(
              child: Center(
                 /* child: Icon(
                Icons.android,
                size: 100,
                color: _iselevated ? Colors.black : Colors.grey[300],
              ))*/),
              duration: const Duration(milliseconds: 200),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color:c,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: isele
                      ? [
                          BoxShadow(
                            color: Colors.grey[500]!,
                            offset: const Offset(4, 4),
                            blurRadius: 15,
                            spreadRadius: 1,
                          ),
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4, -4),
                            blurRadius: 15,
                            spreadRadius: 1,
                          ),
                        ]
                      : null),
        ),
           
            onTap: () {
            setState(() {
              x=!x;
             if (state==0){
                count++;
              }else if (state==2) count--;
              if (state!=1&& x){
              
             seat[index]= seating(id: name, state: 2,iselevated: x);
              }else  if (state!=1){
            
                        seat[index]= seating(id: name, state: 0,iselevated: !x);
                        }

            });
          }, ),
          SizedBox(height: 10,),
          Container(
            child: Text('{$name}',style: TextStyle(fontSize: 6),),
          )
  
         
       
],

   );
   }
        List seat =[
        seating(id: "A1", state: 0,iselevated: true),
        seating(id: "A2", state: 0,iselevated: true),
        seating(id: "A3", state: 0,iselevated: true),
        seating(id: "A4", state: 0,iselevated: true),
        seating(id: "A5", state: 0,iselevated: true),
      
           seating(id: "B1", state: 0,iselevated: true),
        seating(id: "B2", state: 0,iselevated: true),
        seating(id: "B3", state: 0,iselevated: true),
        seating(id: "B4", state: 1,iselevated: true),
        seating(id: "B5", state: 0,iselevated: true),
      
        seating(id: "C1", state: 0,iselevated: true),
        seating(id: "C2", state: 0,iselevated: true),
        seating(id: "C3", state: 1,iselevated: true),
        seating(id: "C4", state: 0,iselevated: true),
        seating(id: "C5", state: 0,iselevated: true),
     
           seating(id: "E1", state: 0,iselevated: true),
        seating(id: "E2", state: 0,iselevated: true),
        seating(id: "E3", state: 1,iselevated: true),
        seating(id: "E4", state: 0,iselevated: true),
        seating(id: "E5", state: 0,iselevated: true),
     
           seating(id: "F1", state: 0,iselevated: true),
        seating(id: "F2", state: 0,iselevated: true),
        seating(id: "F3", state: 0,iselevated: true),
        seating(id: "F4", state: 1,iselevated: true),
        seating(id: "F5", state: 0,iselevated: true),
       

        
  
  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
           
          children: [
            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("select ",style: TextStyle(fontSize: 40,color: Colors.black ,fontWeight: FontWeight.bold)),
                Text("seatings",style: TextStyle(fontSize: 40,color: Colors.red ,fontWeight: FontWeight.bold)),
             ],
            ),
        SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(5),
            alignment: Alignment.center,
             width: 300,
         decoration: BoxDecoration(
             border:Border.all(
          color: Colors.black, //color of border
          width: 2, //width of border
        ),
             
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(50) ,
            
          ),
        
            child: Text("SCREEN",style: TextStyle(fontSize: 30,color: Colors.red),),
          ),
          SizedBox(height: 40,),
          Container(
           child:SizedBox(
             height: 500,
                        child: GridView.builder(
                     itemCount: seat.length,
                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                       crossAxisCount: 5,
                       mainAxisSpacing: 30,
                       crossAxisSpacing: 3)
                       ,
                     itemBuilder: (context, index) {
                      final item=seat[index];
                       return
                     seaticon(item.id, item.state,item.iselevated,index);
                                        },
                                      
                                      ),
           ),
                             ),
 Container(
            padding: EdgeInsets.all(5),
            alignment: Alignment.center,
             width: 350,
         decoration: BoxDecoration(
             border:Border.all(
          color: Colors.black, //color of border
          width: 2, //width of border
        ),
             
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(50) ,
            
          ),
        
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
             seaticon1("", 0, true, 0),
             Text(" Available  "),
              seaticon1("", 1, true, 0),
               Text("Not Available   "),
         seaticon1("", 2, true, 0),
         Text("- Selected  "),



            ],),
            
          ),
             SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
children: [
  Row(
     children: [
               Text("Your Selected ",style: TextStyle(fontSize: 15,color: Colors.black ,fontWeight: FontWeight.bold)),
                Text("Seats:",style: TextStyle(fontSize: 15,color: Colors.red ,fontWeight: FontWeight.bold)),
             ],
  )
  ,
   Row(  children: [
               Text('$count' "tickets - $price EGP Per Ticket",style: TextStyle(fontSize: 10,color: Colors.black ,fontWeight: FontWeight.bold)),
             ],
   ),
]),
              
               Column(
                children: [
  Row(
     children: [
               Text("Your ",style: TextStyle(fontSize: 15,color: Colors.black ,fontWeight: FontWeight.bold)),
                Text("Suptotal:",style: TextStyle(fontSize: 15,color: Colors.red ,fontWeight: FontWeight.bold)),
             ],
  )
  ,
   Row(
      children: [
               Text('$count*$price EGP ',style: TextStyle(fontSize: 10,color: Colors.black ,fontWeight: FontWeight.bold)),
             ],
   )
],
    
   )
            ],
          ),
             SizedBox(height: 20,),

            ElevatedButton(onPressed: (){button1(context);}, child:const Text("Proceed to Snacks",style: TextStyle(fontSize: 20),)
            ,style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all(Colors.red),
                 foregroundColor: MaterialStateProperty.all(Colors.white),
                 padding:  MaterialStateProperty.all(EdgeInsets.fromLTRB(50,15,50,15)),
                 


                  ),),
                  SizedBox(height: 10,),
                   Container(
           padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
  decoration: BoxDecoration(
    borderRadius:  BorderRadius.circular(10) ,
    border: Border.all(color: Colors.red, width: 2),
    color:  Colors.red[900]!.withOpacity(0),
    shape: BoxShape.rectangle,
  ),
  child: TextButton(
    
    child: Text("Back",style: TextStyle(fontSize: 20,color: Colors.red)),
    onPressed: () {},
  ),
),
                          
                            SizedBox(height: 40,),

             ]   ,),
      )
                         
                       );
                     }
                   
                    
}