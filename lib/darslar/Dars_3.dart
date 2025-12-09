import 'package:flutter/material.dart';
import 'package:zoom/zoom.dart';

class Dars3 extends StatefulWidget {
  const Dars3({super.key});

  @override
  State<Dars3> createState() => _Dars3State();
}

class _Dars3State extends State<Dars3> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // 2 ta oyna: Matn va Lug‘at
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[800],
          centerTitle: true,
          title: const Text(
            "3-Dars: Mabdaul Qiroat",
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
      body: InteractiveViewer(
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
              SizedBox(height: 100),
              Container(
                width: 400,
                height: 230,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/3dars_1matn-removebg-preview.png",
                    ),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Container(
                width: 400,
                height: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/3dars_2matn-removebg-preview.png",
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
      body: InteractiveViewer(
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
                      "assets/images/3dars_1lugat-removebg-preview.png",
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
                      "assets/images/3dars_2lugat-removebg-preview.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/3dars_3lugat-removebg-preview.png",
                    ),
                    // fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/3dars_4lugat-removebg-preview.png",
                    ),
                    // fit: BoxFit.fill,
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
