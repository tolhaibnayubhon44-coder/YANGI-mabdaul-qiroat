import 'package:flutter/material.dart';
import 'package:easy_zoom_widget/easy_zoom_widget.dart';

class Dars4 extends StatefulWidget {
  const Dars4({super.key});

  @override
  State<Dars4> createState() => _Dars4State();
}

class _Dars4State extends State<Dars4> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // 2 ta oyna: Matn va Lug‘at
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[800],
          centerTitle: true,
          title: const Text(
            "4-Dars: Mabdaul Qiroat",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            tabs: [
              Tab(text: "Matn"),
              Tab(text: "Lug‘at"),
            ],
          ),
        ),

        body: const TabBarView(children: [matn(), lugat()]),
      ),
    );
  }
}

class matn extends StatefulWidget {
  const matn({super.key});

  @override
  State<matn> createState() => _matnState();
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
                    image: AssetImage("assets/images/4dars_matn.png"),
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
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 130,
                decoration: BoxDecoration(
                  // color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/4dars_1lugat-removebg-preview (1).png",
                    ), fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 130,
                decoration: BoxDecoration(
                  // color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/4dars_2lugat-removebg-preview (1).png",
                    ), fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 130,
                decoration: BoxDecoration(
                  // color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/4dars_3lugat-removebg-preview.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 130,
                decoration: BoxDecoration(
                  // color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/4dars_4lugat-removebg-preview.png",
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
