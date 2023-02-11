import 'package:flutter/material.dart';

class all extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(color: Color(0xffdad3c8)),
          child: SingleChildScrollView(
            child: (Stack(
              children: [
                IntrinsicHeight(
                  child: Row(
                    children: [
                       Container(child: Image.asset("assets/images/after_login_bg.png",fit: BoxFit.cover,),),
                      Container(
                        child: Image.asset(
                          "assets/images/longin_pange_background.png",
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
          )),
    );
  }
}
