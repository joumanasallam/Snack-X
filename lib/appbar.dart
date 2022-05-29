import 'package:flutter/material.dart';



class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
    CustomAppBar() : preferredSize = Size.fromHeight(kToolbarHeight);

    @override
    final Size preferredSize; // default is 56.0

    @override
    _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>{

    @override
    Widget build(BuildContext context) {
        return AppBar(
      
       backgroundColor: Colors.white,
       elevation: 0,
       leading:Icon(Icons.menu,color: Colors.yellow,size:40 ,), 
       actions: [
        Icon(Icons.person,color: Colors.yellow,size:40,), 
       ],
       title: Container(
         margin:EdgeInsets.all(5) ,
       
         
         decoration: BoxDecoration(
             color: Colors.grey[300],
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(100) ,
            
          ),
        
         
         child:
          
           TextField(
               
               
                decoration:InputDecoration(
                  
               
                   hintText: "search for any cinema",
                   hintStyle: TextStyle(fontSize: 10,color: Colors.black12,),
                   prefixIcon: Icon(Icons.search),
                    enabledBorder:OutlineInputBorder(
                     borderRadius:BorderRadius.circular(50) ,
                     borderSide: BorderSide(width: 8,  color :Colors.white,
                 ) ,

                     ),
        
               ),
                keyboardType: TextInputType.text,
       ),
          
       
       ),
    
   );
    }
}