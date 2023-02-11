import 'dart:math';
import 'package:flutter/material.dart';
import 'package:hallo/after_login.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var userNameController = TextEditingController();
  var passwordeController = TextEditingController();
  var fromKey = GlobalKey<FormState>();

  bool isRememberME = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(

            decoration: const BoxDecoration(
                image: DecorationImage(
                    image:
                          AssetImage(
                         "assets/images/longin_pange_background.png"),

                    fit: BoxFit.cover)
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Form(
              key: fromKey,
              child: Card(
                elevation: 20,
                color: Colors.white70,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0)),
                child: Container(    //main continer for input
                  height: max(300, 320),
                  width: max(280, 350),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10,  right: 25, left: 30),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 75),
                          child: Row(
                            children: [
                              Container(  //user name
                                child: Icon(
                                  Icons.account_box_rounded,
                                  color: Color(0xFF1A237E),
                                  size: 50,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                    child: TextFormField(
                                  controller: userNameController,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "user name ",
                                  ),
                                  validator: (value) {
                                    if (value != null && value.isEmpty) {
                                      return 'Enter password ';
                                    }
                                  },
                                )),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              Container( //password
                                child: Icon(
                                  Icons.lock_outline_rounded,
                                  color: Color(0xFF1A237E),
                                  size: 50,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: TextFormField(
                                    controller: passwordeController,
                                    obscureText: true,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "password",
                                    ),
                                    validator: (value) {
                                      if (value != null && value.isEmpty) {
                                        return 'Enter user name ';
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Checkbox(value: isRememberME, onChanged:(value) {   // remaberme
                              setState(() {
                                isRememberME = ! isRememberME;
                              });
                            }),
                            Container(
                              child: Text("RemeberMe ",),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 410),
              child: Container(
                width: 275,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white60.withOpacity(0.4),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                ),
                child: Center(
                    child: Container(
                  child: TextButton(
                    onPressed: () {
                     if(fromKey.currentState!.validate()){
                       Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return after_login();
                       }));

                     }
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.brown, fontSize: 22),
                    ),
                  ),
                )),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(bottom: 335),
              child: SizedBox(
                height: 100,
                width: 100,
                child: Icon(
                  Icons.account_circle_rounded,
                  color: Color(0xFF1A237E),
                  size: 105,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28),
            child: TextButton( //back arrow
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: SizedBox(
                child: Icon(
                  Icons.arrow_back_rounded,
                  size: 35,
                  color: Colors.black38,
                ),

              ),
            ),
          )
        ],
      ),
    );
  }
}
