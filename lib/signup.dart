import 'package:flutter/material.dart';
import 'package:ll/first.dart';

class signup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _signupstate();
  }
}

class _signupstate extends State<signup> {
  final _formKey = GlobalKey<FormState>();
  void button1(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return first();
    }));
  }

  Widget passfield(
    String s,
    String v,
  ) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(20),
      child: TextFormField(
        validator: (String? value) {
          if (value!.isEmpty) return v;
          return null;
        },
        style: TextStyle(color: Colors.grey),
        decoration: InputDecoration(
            hintText: s,
            hintStyle: TextStyle(fontSize: 15),
            suffixIcon: IconButton(
              icon:
                  Icon(visibilty ? (Icons.visibility) : (Icons.visibility_off)),
              onPressed: () {
                setState(() {
                  visibilty = !visibilty;
                });
              },
            ),
            border: InputBorder.none),
        obscureText: visibilty,
        keyboardType: TextInputType.text,
      ),
    );
  }

  bool visibilty = true;
  Widget filed(String s,String v) {
    return Container(
      child: Column(children: [
        Container(
          height: 45,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(20),
          child: TextFormField(
             validator: (String? value){
               if(value!.isEmpty){
                 return v;
               }
             },
            style: TextStyle(color: Colors.grey),
            decoration: InputDecoration(
                hintText: s,
                hintStyle: TextStyle(fontSize: 15),
                border: InputBorder.none),
            keyboardType: TextInputType.text,
          ),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 20),
                Container(
                  child: Image.asset(
                    "assets/images/snack x.png",
                    width: 200,
                    height: 100,
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Sign UP",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                ),
                Container(
                    child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      filed("ENTER FIRST NAME","Required"),
                      filed("ENTER LAST NAME","Required"),
                      filed("ENTER EMAIL","Required"),
                      passfield("ENTER PASSWORD","Required"),
                      passfield("CONFIRMED PASSWORD","Required")
                    ],
                  ),
                )),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    //TODO: calling api
                  },
                  child: const Text(
                    "SIGN UP",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(120, 15, 120, 15)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "----------or---------",
                  style: TextStyle(color: Colors.grey[300], fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton.icon(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.fromLTRB(20, 0, 20, 0)),
                        ),
                        onPressed: () {},
                        icon: Icon(Icons.facebook),
                        label: const Text("FACEBOOK")),
                    TextButton.icon(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.fromLTRB(30, 5, 30, 5)),
                        ),
                        onPressed: () {},
                        icon: Icon(Icons.mail),
                        label: const Text("GMAIL")),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have account?  "),
                    InkWell(
                        onTap: () {
                          button1(context);
                        },
                        child: Text(
                          "SING IN",
                          style: TextStyle(color: Colors.red),
                        ))
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
            //height:double.infinity,

            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                // colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
                image: Image.asset('assets/images/App-K.png').image,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
