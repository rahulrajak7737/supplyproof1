import 'package:flutter/material.dart';
import 'package:supplyproof/login_screen.dart';
import 'fleet_details.dart';
import 'general_qr_generator.dart';
import 'view_crop_details.dart';


class Mydashboardlogistics extends StatefulWidget {
  const Mydashboardlogistics({Key? key}) : super(key: key);

  @override
  State<Mydashboardlogistics> createState() => _MydashboardlogisticsState();
}

class _MydashboardlogisticsState extends State<Mydashboardlogistics> {
  @override
  Widget build(BuildContext context) {
    final fleet_details= Material(

      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.green.shade800,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width*0.8,
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Myfleetdetails()),
          );
        },

        child: Text(
          'Enter Fleet details' ,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
    final Qrgenerator= Material(

      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.green.shade800,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width*0.8,
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>Myqrgenerator()),
          );
        },

        child: Text(
          'QR Generation' ,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
    final viewcropdetails= Material(

      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.green.shade800,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width*0.8,
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>Myviewcropdetails()),
          );
        },

        child: Text(
          'View Crop Details' ,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
    return Scaffold(
      backgroundColor: Color(0xffECF2FF),
      appBar: AppBar(
        title: Text('SupplyProof', style:
        TextStyle(fontSize: 24, fontWeight: FontWeight.w700),


        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white),
          onPressed: (){
            Navigator.pop(context);
          },

        ),
        backgroundColor: Colors.green.shade800,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),

            Text('Welcome!',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade800,
              ),),
            SizedBox(
              height: 100,
            ),
            viewcropdetails,

            SizedBox(
              height: 30,
            ),
            fleet_details,
            SizedBox(
              height: 30,
            ),
            Qrgenerator,

          ],
        ),
      ),


    );
  }
}
