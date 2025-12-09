import 'package:flutter/material.dart';
import 'package:mabdaul_qiroat/kitob.dart';

void main() {
  runApp(const MabdaulQiroatApp());
}

class MabdaulQiroatApp extends StatelessWidget {
  const MabdaulQiroatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mabdaul Qiroat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange, fontFamily: 'Arial'),
      home: Kitob(),
    );
  }
}
