import 'package:flutter/material.dart';

class Myviewcropdetails extends StatefulWidget {
  const Myviewcropdetails({Key? key}) : super(key: key);

  @override
  State<Myviewcropdetails> createState() => _MyviewcropdetailsState();
}

class _MyviewcropdetailsState extends State<Myviewcropdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF2FF),
       appBar: AppBar(
         backgroundColor: Colors.green.shade800 ,
         title: Text('Crop ID', style: TextStyle(
           fontSize: 26,
           fontWeight: FontWeight.bold,

         ),),
       ),
    );
  }
}
