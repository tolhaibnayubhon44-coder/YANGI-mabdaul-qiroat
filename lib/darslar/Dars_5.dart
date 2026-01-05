import 'package:flutter/material.dart';
import 'package:easy_zoom_widget/easy_zoom_widget.dart';
import 'package:mabdaul_qiroat/darslar/Dars_2.dart';

class Dars5 extends StatefulWidget {
  const Dars5({super.key});

  @override
  State<Dars5> createState() => _Dars5State();
}

class _Dars5State extends State<Dars5> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 2 ta oyna: Matn va Lug‘at
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[800],
          centerTitle: true,
          title: const Text(
            "5-Dars: Mabdaul Qiroat",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            tabs: [
              Tab(text: "Matn"),
              Tab(text: "Lug‘at"),
              Tab(text: "fellar"),
            ],
          ),
        ),

        body: const TabBarView(children: [matn(), lugat(), fellar()]),
      ),
    );
  }
}

class _matnState extends State<matn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasyZoomWidget(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFFFF3E0), Color(0xFFFFE0B2), Color(0xFFFFF3E0)],
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                width: 400,
                height: 470,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/5dars_matn-removebg-preview.png",
                    ),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class lugat extends StatefulWidget {
  const lugat({super.key});

  @override
  State<lugat> createState() => _lugatState();
}

class _lugatState extends State<lugat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasyZoomWidget(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFFFF3E0), Color(0xFFFFE0B2), Color(0xFFFFF3E0)],
            ),
          ),
          child: Column(
            children: [
              Container(
                width: 300,
                height: 250,
                decoration: BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/5dars_1lugat-removebg-preview.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 250,
                decoration: BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/5dars_2lugat-removebg-preview.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class fellar extends StatefulWidget {
  const fellar({super.key});

  @override
  State<fellar> createState() => _fellarState();
}

class _fellarState extends State<fellar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasyZoomWidget(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFFFF3E0), Color(0xFFFFE0B2), Color(0xFFFFF3E0)],
            ),
            image: DecorationImage(
              image: AssetImage("assets/images/.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    );
  }
}
