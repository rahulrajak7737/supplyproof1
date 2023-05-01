import 'package:flutter/material.dart';

import 'general_qr_generator.dart';
import 'productdetails.dart';
import 'view_crop_details.dart';

class Mydashboardbuyer extends StatefulWidget {
  const Mydashboardbuyer({Key? key}) : super(key: key);

  @override
  State<Mydashboardbuyer> createState() => _MydashboardbuyerState();
}

class _MydashboardbuyerState extends State<Mydashboardbuyer> {
  @override
  Widget build(BuildContext context) {
    final Product_details= Material(

        elevation: 5,
        borderRadius: BorderRadius.circular(30),
        color: Colors.green.shade800,
        child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width*0.8,
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Myproductdetails()),
          );
        },

         child: Text(
               'Enter Product details' ,
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
    return  Scaffold(
      backgroundColor: Color(0xffECF2FF),
      appBar: AppBar(

        title: Text('SupplyProof', style:
        TextStyle(fontSize: 24, fontWeight: FontWeight.w700),



        ),
    leading: IconButton(
    icon: Icon(Icons.arrow_back,color: Colors.white),
    onPressed: (){
    Navigator.pushNamed(context, 'login_screen');
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
              Product_details,
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


