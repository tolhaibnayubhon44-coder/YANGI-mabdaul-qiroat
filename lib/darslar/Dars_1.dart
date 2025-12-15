import 'package:flutter/material.dart';
import 'package:zoom_viewer/zoom_viewer.dart';

class Dars1 extends StatelessWidget {
  const Dars1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // 2 ta oyna: Matn va Lug‘at
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[800],
          centerTitle: true,
          title: const Text(
            "1-Dars: Mabdaul Qiroat",
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
      body: ZoomViewer(
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
              image: AssetImage("assets/images/mat1-removebg-preview (1).png"),
              fit: BoxFit.fitWidth,
            ),
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
      body: ZoomViewer(
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
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/1dars_1lugat.png"),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/1dars_2lugat.png"),
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
