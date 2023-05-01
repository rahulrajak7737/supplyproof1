import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:qr_flutter/qr_flutter.dart';
import 'dart:convert';

class Myqrgenerator extends StatefulWidget {
  const Myqrgenerator({Key? key}) : super(key: key);

  @override
  State<Myqrgenerator> createState() => _MyqrgeneratorState();
}

class _MyqrgeneratorState extends State<Myqrgenerator> {
  final TextEditingController _cropNoController = TextEditingController();
  String qrData = '';

  @override
  void dispose() {
    _cropNoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECF2FF),
      appBar: AppBar(
        title: const Text(
          'QR Generation',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.green.shade800,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15, 25, 15, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Enter Crop Number',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: const Color(0xFF448C83),
                      width: 2,
                    ),
                  ),
                  child: TextFormField(
                    controller: _cropNoController,
                    autofocus: true,
                    obscureText: false,
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Material(

            elevation: 5,
            borderRadius: BorderRadius.circular(30),
            color: Colors.green.shade800,
            child: MaterialButton(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              minWidth: MediaQuery.of(context).size.width*0.8,
              onPressed: ()async{
              final cropName = _cropNoController.text;
              final Map<String, String> formData = {
              'cropName': cropName
              };
              print(cropName);
              // final response = await http.post(
              // Uri.parse('http://172.18.76.186:3000/generate'),
              // body: formData,
              // );
    // Handle the response
              //if (response.statusCode == 200)
                if (true){
    // The request was successful
              setState(() {
              //qrData = response.body;
              qrData = "uniqueid: 'CROP0', cropName: 'Tomato', plannedHarvest: '12-11-2022', fertilizer: 'high-phosphorus', fertilizer harvestedQuantity: '5 tonnes',driverprofilenumber:'D20', actualHarvest:'16-11-2022', shipmentWeight:'2 tonnes' vehicleNumber:'v23', driverNumber:'d11', deliverydate:'14-11-2022', warehouseIncharge:'Jhon', warehouseAddress:'Newzealand', warehouseName:'Vijay warehouses',address:'Japan',registrationNo:'W22',totalCapacity:'1000tonnes',storageType:'Cold Storage',storageNumber:'w1',arrivaldate:'18-11-2022',  testCertificate:'https://www.google.com/ur', certificateIssueDate:'19-11-2000',shipmentDate : '20-11-2022',containerNumber:'C27',shippedTo:'Thailand',arrivalDate:'22-11-2022',arrivalWeight:'2 tonnes',shipmentAcceptance:'Yes',productUsedFor:'Consumption',";
              print(qrData);
                });

              showDialog(
              context: context, builder: (BuildContext context) {
              return AlertDialog(
                 title: Text('QR Code'),
                   content: SizedBox(
                   width: 200,
                   height: 200,
               child: QrImage(
              data: qrData,
              version: QrVersions.auto,
                backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              ),
             ),
             );
          },
         );
    // Do something with the response, such as display it in a dialog box
    //   showDialog(
    //     context: context,
    //     builder: (BuildContext context) {
    //       return AlertDialog(
    //         title: const Text('Response'),
    //         content: Center(
    //         child: QrImage(
    //         data: qrData,
    //         version: QrVersions.auto,
    //         size: 20.0,
    //       ),
    //       ),
    //         actions: <Widget>[
    //           TextButton(
    //             onPressed: () {
    //               Navigator.of(context).pop();
    //             },
    //             child: const Text('OK'),
    //           ),
    //         ],
    //       );
    //     },
    //   );
         } else {
         // The request failed
        // Handling the error, such as displaying an error message
         showDialog(
         context: context,
         builder: (BuildContext context) {
            return AlertDialog(
            title: const Text('Error'),
            content: const Text('Failed to call Node.js endpoint'),
         actions: <Widget>[
            TextButton(
         onPressed: () {
          Navigator.of(context).pop();
            },
            child: const Text('OK'),
            ),
            ],
            );
            },
            );
            }
            },


              child: Text(
                'Generate QR' ,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           ElevatedButton(onPressed: () async {
    //             final cropName = _cropNoController.text;
    //             final Map<String, String> formData = {
    //               'cropName': cropName
    //             };
    //             print(cropName);
    //             final response = await http.post(
    //               Uri.parse('http://172.18.76.186:3000/generate'),
    //               body: formData,
    //             );
    //             // Handle the response
    // if (response.statusCode == 200) {
    // // The request was successful
    //   setState(() {
    //     qrData = response.body;
    //     print(qrData);
    //   });
    //
    //   showDialog(
    //     context: context,
    //     builder: (BuildContext context) {
    //       return AlertDialog(
    //         title: Text('QR Code'),
    //         content: SizedBox(
    //           width: 200,
    //           height: 200,
    //           child: QrImage(
    //             data: qrData,
    //             version: QrVersions.auto,
    //             backgroundColor: Colors.white,
    //             foregroundColor: Colors.black,
    //           ),
    //         ),
    //       );
    //     },
    //   );
    // // Do something with the response, such as display it in a dialog box
    // //   showDialog(
    // //     context: context,
    // //     builder: (BuildContext context) {
    // //       return AlertDialog(
    // //         title: const Text('Response'),
    // //         content: Center(
    // //         child: QrImage(
    // //         data: qrData,
    // //         version: QrVersions.auto,
    // //         size: 20.0,
    // //       ),
    // //       ),
    // //         actions: <Widget>[
    // //           TextButton(
    // //             onPressed: () {
    // //               Navigator.of(context).pop();
    // //             },
    // //             child: const Text('OK'),
    // //           ),
    // //         ],
    // //       );
    // //     },
    // //   );
    // } else {
    // // The request failed
    // // Handle the error, such as displaying an error message
    // showDialog(
    // context: context,
    // builder: (BuildContext context) {
    // return AlertDialog(
    // title: const Text('Error'),
    // content: const Text('Failed to call Node.js endpoint'),
    // actions: <Widget>[
    // TextButton(
    // onPressed: () {
    // Navigator.of(context).pop();
    // },
    // child: const Text('OK'),
    // ),
    // ],
    // );
    // },
    // );
    // }
    // }, child: const Text("Generate Qr", style: TextStyle(
    //             fontSize: 22,
    //             fontWeight: FontWeight.w700
    //           ),))
    //         ],
    //       )
        ],
      ),
    );
  }
}
