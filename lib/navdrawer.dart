import 'package:flutter/material.dart';
import 'package:ll/MyOrder.dart';
import 'package:ll/PointSystem.dart';

class NavDrawer extends StatelessWidget {
   void button1 (BuildContext context ,int n){
   if (n==1){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
      return MyOrder();
    }
  ));
    }
   
     else if (n==2){
 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
      return Point();
     } 
    
    ));
     };
    }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'WELCOME',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/db20e3352d52156b904980686926b0f7.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('My Profile'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text('My Order'),
            onTap: () => {Navigator.of(context).pop(),button1(context,1)},
          ),
          ListTile(
            leading: Icon(Icons.one_k_plus_outlined),
            title: Text('My Points'),
            onTap: () => {Navigator.of(context).pop(),button1(context,2)},
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text('About Us'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}