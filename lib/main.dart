import 'package:bio_app/screens/bio_screen.dart';
import 'package:flutter/material.dart';
void main (){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BioScreen(

      ),
    );
  }
}
