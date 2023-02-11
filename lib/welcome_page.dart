import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hallo/login.dart';

class wlecome_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://i.pinimg.com/564x/98/46/d6/9846d6bb5b92183ee8d6d73a28649db6.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.centerLeft)),
            child: Stack(
              children: [ Center(
                  child: Column(
                    children: [
                      Expanded(

                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Text("valley",
                                    // style: TextStyle(fontFamily: "GallientRegular", fontSize: 80)),
                                    style: GoogleFonts.getFont(
                                        "Playfair Display",
                                      textStyle: TextStyle(
                                          fontSize: 80, color: Colors.white),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    
                      Container(
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all(
                                  Colors.white)),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return login();
                            }
                            ));
                          },
                          child: Icon(
                            Icons.arrow_forward_outlined,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFc06d59),
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 20,
                              color:Color(0xFFebe3cf)
                          ),
                        ),
                        margin: EdgeInsets.only(bottom: 30),
                      )
                    ],
                  )),
              ],
            )));
  }
  // Route _createRoute() {
  //   return PageRouteBuilder(
  //     pageBuilder: (context, animation, secondaryAnimation) => login(),
  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //       const begin = Offset(0.0, 1.0);
  //       const end = Offset.zero;
  //       const curve = Curves.ease;
  //
  //       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  //
  //       return SlideTransition(
  //         position: animation.drive(tween),
  //         child: child,
  //       );
  //     },
  //   );
  // }
}
