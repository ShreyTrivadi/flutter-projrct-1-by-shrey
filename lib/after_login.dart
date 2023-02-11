import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hallo/main_page.dart';
import 'package:slider_button/slider_button.dart';

class after_login extends StatelessWidget {
  const after_login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: Color(0xffffe4d9)),
          ),
          Container(
            margin: EdgeInsets.only(top: 120),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/after_login_bg.png'),
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter)),
          ),
          Container(
            margin: EdgeInsets.only(top: 35 ),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back_rounded,
                size: 35,
                color: Colors.black38,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 85.0),
            child: RotatedBox(
              quarterTurns: -1,
              child: Text(
                "Excentric",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.95  ),
                    fontWeight: FontWeight.bold,
                    fontSize: 120),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 50),
              child: SliderButton(action: (){
                Navigator.of(context).push(MaterialPageRoute(builder:(context){
                  return menu();
                }
                ));
              },
                backgroundColor: Color(0xffffb6c1).withOpacity(0.7),
                boxShadow: BoxShadow(blurRadius: 5),
                buttonColor: Color(0xffaafddf),
              label: Text("Go To, valley",
                     style: GoogleFonts.getFont("Playfair Display",
                         textStyle: TextStyle(
                             fontSize: 27, color: Color(0xffffe4d9))),),
                icon: Center(
                  child: Icon(
                    Icons.arrow_forward_ios_rounded
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
