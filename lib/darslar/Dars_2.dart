import 'package:flutter/material.dart';
// import 'package:zoom/zoom.dart';

class Dars2 extends StatefulWidget {
  const Dars2({super.key});

  @override
  State<Dars2> createState() => _Dars2State();
}

class _Dars2State extends State<Dars2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // 2 ta oyna: Matn va Lug‘at
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[800],
          centerTitle: true,
          title: const Text(
            "2-Dars: Mabdaul Qiroat",
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
      body: Container(
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
                  image: AssetImage("assets/images/2dars_1matn.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Container(
              width: 400,
              height: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/2dars_2matn.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ],
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
      body: Container(
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
                  image: AssetImage("assets/images/2dars_1lugat.png"),
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
                  image: AssetImage("assets/images/2dars_2lugat.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
