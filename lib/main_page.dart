import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hallo/main%20manu%20list/all.dart';

class menu extends StatefulWidget {
  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff85817a),
          title: Text("The valley",
              style: GoogleFonts.getFont("Playfair Display",
                  textStyle: TextStyle(fontSize: 27.5))),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_outlined),
              tooltip: 'Search',
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt_outlined),
              tooltip: 'scane',
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.linear_scale_outlined),
              tooltip: 'menu',
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(color: Color(0xffdad3c8)),
          child: ListView(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Stack(children: [
                            Container(
                              height: 70,
                              child: Row(
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      "Dicsover",
                                      style: GoogleFonts.getFont(
                                          "Playfair Display",
                                          fontSize: 25),
                                    ),
                                  ),
                                  Text(
                                    "Your",
                                    style: GoogleFonts.getFont(
                                        "Playfair Display",
                                        fontSize: 60),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 85),
                              child: Container(
                                child: Text("Next Style!",
                                    style: GoogleFonts.getFont(
                                        "Playfair Display",
                                        fontSize: 60)),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 35, right: 20),
                              alignment: Alignment.topRight,
                              child: Image.asset(
                                "assets/images/descount_sticer.png",
                                width: 105,
                              ),
                            )
                          ])),
                      Padding(
                        padding: const EdgeInsets.only(top: 41, left: 10),
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Product Catalog 🔥",
                            style: GoogleFonts.getFont("Playfair Display",
                                fontSize: 22, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      ConstrainedBox(
                        //tab view
                          constraints: BoxConstraints(
                            minHeight: 500,
                            maxHeight: 1000,
                          ),
                              child: manu_bar()),

                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

class manu_bar extends StatefulWidget {
  @override
  State<manu_bar> createState() => _manu_barState();
}

class _manu_barState extends State<manu_bar>
    with SingleTickerProviderStateMixin {
  late final tabController = TabController(length: 5, vsync: this)
    ..addListener(() {
      setState(() {});
    });

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) =>[
        SliverAppBar(
          pinned: true,
          floating: true,
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xffdad3c8),
          snap: true,
          title:  TabBar(
            controller: tabController,
            isScrollable: true,
            unselectedLabelStyle: TextStyle(color: Colors.black),
            unselectedLabelColor: Colors.transparent,
            indicator: BoxDecoration(),
            indicatorPadding: EdgeInsets.zero,
            tabs: [
              Tab(
                iconMargin: EdgeInsets.zero,
                child: Container(
                  decoration: BoxDecoration(
                      color: tabController.index == 0
                          ? Colors.black
                          : Color(0xffe9e8e2),
                      borderRadius: BorderRadius.circular(16)),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "All",
                      style: GoogleFonts.getFont("Playfair Display",
                          textStyle: TextStyle(
                              fontSize: 20,
                              color: tabController.index == 0
                                  ? Colors.white
                                  : Color(0xff7d7774))),
                    ),
                  ),
                ),
              ),
              Tab(
                iconMargin: EdgeInsets.zero,
                child: Container(
                  decoration: BoxDecoration(
                      color: tabController.index == 1
                          ? Colors.black
                          : Color(0xffe9e8e2),
                      borderRadius: BorderRadius.circular(16)),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 3),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Man",
                      style: GoogleFonts.getFont("Playfair Display",
                          textStyle: TextStyle(
                              fontSize: 25,
                              color: tabController.index == 1
                                  ? Colors.white
                                  : Color(0xff7d7774))),
                    ),
                  ),
                ),
              ),
              Tab(
                iconMargin: EdgeInsets.zero,
                child: Container(
                  decoration: BoxDecoration(
                      color: tabController.index == 2
                          ? Colors.black
                          : Color(0xffe9e8e2),
                      borderRadius: BorderRadius.circular(16)),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 3),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Woman",
                      style: GoogleFonts.getFont("Playfair Display",
                          textStyle: TextStyle(
                              fontSize: 25,
                              color: tabController.index == 2
                                  ? Colors.white
                                  : Color(0xff7d7774))),
                    ),
                  ),
                ),
              ),
              Tab(
                iconMargin: EdgeInsets.zero,
                child: Container(
                  decoration: BoxDecoration(
                      color: tabController.index == 3
                          ? Colors.black
                          : Color(0xffe9e8e2),
                      borderRadius: BorderRadius.circular(16)),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 3),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Kids",
                      style: GoogleFonts.getFont("Playfair Display",
                          textStyle: TextStyle(
                              fontSize: 25,
                              color: tabController.index == 3
                                  ? Colors.white
                                  : Color(0xff7d7774))),
                    ),
                  ),
                ),
              ),
              Tab(
                iconMargin: EdgeInsets.zero,
                child: Container(
                  decoration: BoxDecoration(
                      color: tabController.index == 4
                          ? Colors.black
                          : Color(0xffe9e8e2),
                      borderRadius: BorderRadius.circular(16)),
                  padding: EdgeInsets.symmetric(horizontal: 11, vertical: 3),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "T-short",
                      style: GoogleFonts.getFont("Playfair Display",
                          textStyle: TextStyle(
                              fontSize: 25,
                              color: tabController.index == 4
                                  ? Colors.white
                                  : Color(0xff7d7774))),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ], body: TabBarView(
      controller: tabController,
      children: [
        Container(
         child: all(),
        ),
        Container(
          child: Text('All'),
        ),
        Container(
          child: Text('All'),
        ),
        Container(
          child: Text('All'),
        ),
        Container(
          child: Text('All'),
        ),

      ],
    ),

    );
  }
}
