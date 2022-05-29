import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ll/cubit/login/login_cubit.dart';
import 'package:ll/signup.dart';

import 'homepage2.dart';

class first extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _firststate();
  }
}

class _firststate extends State<first> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
    debugPrint("All Controller has been disposed");
  }

  void button1(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return signup();
    }));
  }

  void button2(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return homepage2();
    }));
  }

  bool visibilty = true;

  @override
  Widget build(BuildContext context) {
    var cubit = LoginCubit.get(context);
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccessState) {
          button2(context);
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Center(
              child: Container(
                child: Form(
                  key: _formKey,
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
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          )),
                      Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(25),
                        child: TextFormField(
                          controller: _emailController,
                          style: TextStyle(color: Colors.grey),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Required';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              hintText: "ENTER E-MAIL",
                              hintStyle: TextStyle(fontSize: 15),
                              suffixIcon: Icon(Icons.alternate_email),
                              border: InputBorder.none),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(25),
                        child: TextFormField(
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Required';
                            }
                            return null;
                          },
                          controller: _passwordController,
                          style: TextStyle(color: Colors.grey),
                          decoration: InputDecoration(
                              hintText: "ENTER PASSWORD",
                              hintStyle: TextStyle(fontSize: 15),
                              suffixIcon: IconButton(
                                icon: Icon(visibilty
                                    ? (Icons.visibility)
                                    : (Icons.visibility_off)),
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
                      ),
                      SizedBox(height: 40),
                      state is LoginLoadingState
                          ? Center(
                              child: CircularProgressIndicator(),
                            )
                          : ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  cubit.signIn(
                                      username: _emailController.text.trim(),
                                      password:
                                          _passwordController.text.trim());
                                }
                              },
                              child: const Text(
                                "SIGN IN",
                                style: TextStyle(fontSize: 20),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.red),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.white),
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
                          Text("Don’t have account? "),
                          InkWell(
                              onTap: () {
                                button1(context);
                              },
                              child: Text(
                                "SING UP",
                                style: TextStyle(color: Colors.red),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                height: 650,
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
      },
    );
  }
}
