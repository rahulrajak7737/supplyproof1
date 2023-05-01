import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class MyCropdetails  extends StatefulWidget {
  const MyCropdetails({Key? key}) : super(key: key);

  @override
  State<MyCropdetails> createState() => _MyCropdetailsState();
}

final certificateController = TextEditingController();
final cropController = TextEditingController();
final plannedharvestController = TextEditingController();
final fertilizer1Controller = TextEditingController();
final fertilizer2Controller = TextEditingController();
final harvestquantityController = TextEditingController();
final shippedthroughController = TextEditingController();


class _MyCropdetailsState extends State<MyCropdetails> {
  late String _Value="a";
  List<String> _opt= ['Organic (O)',  'Regular (R)'];
  TextEditingController  plannedharvestController  =TextEditingController();
  // TextEditingController CertificateController = TextEditingController();
  // late PickedFile _imageFile;
  // final ImagePicker _picker = ImagePicker();
  // Future<void> _showImagePicker() async {
  //   final pickedFile = await ImagePicker().getImage(source: ImageSource.gallery);
  //   if (pickedFile != null) {
  //     certificateController.text = pickedFile.path;
  //   }
  // }
  // File? image;
  //
  //
  // Future pickImage(ImageSource source) async{
  //
  //   try {
  //     final image = await ImagePicker().pickImage(source: source);
  //     if (image == null) return;
  //
  //     final imageTemporary = File(image.path);
  //
  //     setState(() {
  //       this.image = imageTemporary;
  //     });
  //   }on PlatformException catch(e) {
  //     print('failed to pick image $e');
  //   }
  //
  //
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF2FF),
      appBar: AppBar(
        title: Text("Crop Details", style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.green,

      ),
      body:  SingleChildScrollView(
        child: Column(
            children: [
              Row(
                children: [
                  Text('Select the type of farming ?', style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600

                  ),),
                ],
              ),


              for (String option in _opt) ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child:
                      ListTile(
                        title: Text(option, style: TextStyle(fontSize: 18,
                            fontWeight: FontWeight.w600),),

                        leading: Radio(
                          value: option,
                          groupValue: _Value,
                          onChanged: (value) {
                            setState(() {
                              _Value = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],

              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.27,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,

                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Color(0xFF448C83),
                    width: 2,

                  ),

                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0, top: 10.0, left: 0.0,bottom: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Certificate Number', style:  TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),)
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(right: 8.0, top: 10.0, left: 0.0,bottom: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Crop Name', style:  TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0, top: 10.0, left: 0.0,bottom: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Harvested Date', style:  TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0, top: 10.0, left: 0.0,bottom: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Fertilizer Used', style:  TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),)
                              ],
                            ),
                          ),


                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: MediaQuery.of(context).size.height * 0.05,
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Color(0xFF448C83),
                                    width: 2,
                                  ),
                                ),

                                  child: TextFormField(
                                    // onTap: (){
                                    //   // showModalBottomSheet(context: context,
                                    //   //   builder: ((builder) => bottomSheet()),);
                                    //   pickImage(ImageSource.gallery);
                                    // },

                                    controller: certificateController,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Farming Certificate',
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                    ),

                                  ),


                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: MediaQuery.of(context).size.height * 0.05,
                                decoration: BoxDecoration(
                                  // color: FlutterFlowTheme.of(context).primaryBtnText,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Color(0xFF448C83),
                                    width: 2,
                                  ),
                                ),
                                child:  TextFormField(
                                  controller: cropController,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    // hintStyle: FlutterFlowTheme.of(context).bodySmall,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),

                                ),

                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: MediaQuery.of(context).size.height * 0.05,
                                decoration: BoxDecoration(
                                  // color: FlutterFlowTheme.of(context).primaryBtnText,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Color(0xFF448C83),
                                    width: 2,
                                  ),
                                ),
                                child:  TextFormField(
                                  controller: plannedharvestController,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    // hintStyle: FlutterFlowTheme.of(context).bodySmall,
                                    suffixIcon: Icon(
                                      Icons.calendar_month,
                                      color: Colors.green,
                                    ),
                                  ),
                                  onTap: () async{
                                    DateTime? pickeddate =await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(1900),
                                        lastDate: DateTime.now()
                                    );
                                    if (pickeddate != null) {
                                      setState(() {
                                        plannedharvestController.text = DateFormat('dd-MM-yyyy').format(pickeddate);
                                      });
                                    }

                                  },


                                ),

                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: MediaQuery.of(context).size.height * 0.05,
                                decoration: BoxDecoration(
                                  // color: FlutterFlowTheme.of(context).primaryBtnText,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Color(0xFF448C83),
                                    width: 2,
                                  ),
                                ),
                                child:  TextFormField(
                                  controller: fertilizer1Controller,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: ' Type of Fertilizer',
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),

                                ),

                              ),
                            ],
                          ),


                        ],
                      )

                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.21,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,

                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Color(0xFF448C83),
                    width: 2,


                  ),

                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0, top: 10.0, left: 0.0,bottom: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Crop Quality', style:  TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0, top: 10.0, left: 0.0,bottom: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Crop Quantity', style:  TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0, top: 10.0, left: 0.0,bottom: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Shipped through', style:  TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),)
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: MediaQuery.of(context).size.height * 0.05,
                              decoration: BoxDecoration(
                                // color: FlutterFlowTheme.of(context).primaryBtnText,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Color(0xFF448C83),
                                  width: 2,
                                ),
                              ),
                              child:  TextFormField(
                                // controller: harvestquantityController,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Enter URl of document',
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),

                              ),

                            ),
                          ],
                        ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: MediaQuery.of(context).size.height * 0.05,
                                decoration: BoxDecoration(
                                  // color: FlutterFlowTheme.of(context).primaryBtnText,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Color(0xFF448C83),
                                    width: 2,
                                  ),
                                ),
                                child:  TextFormField(
                                  controller: harvestquantityController,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                   hintText: 'Tonnes/KGs',
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),

                                ),

                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: MediaQuery.of(context).size.height * 0.05,
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Color(0xFF448C83),
                                    width: 2,
                                  ),
                                ),
                                child:  TextFormField(
                                  controller: shippedthroughController,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText:  'Vehicle Number',

                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.blueGrey,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.blueGrey,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.blueGrey,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.blueGrey,
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),

                                ),

                              ),
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),


                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.green.shade800,
                    child: MaterialButton(
                        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                        minWidth: MediaQuery.of(context).size.width*0.8,
                        onPressed: ()async {
                      final certificate = certificateController.text;
                      final crop = cropController.text;
                      final plannedharvest = plannedharvestController.text;
                      final fertilizer1 = fertilizer1Controller.text;
                      final fertilizer2 = fertilizer2Controller.text;
                      final harvestquantity = harvestquantityController.text;
                      final shippedthrough = shippedthroughController.text;

                      final Map<String, String> formData = {
                        'farmtype': _Value,
                        'certificate': certificate,
                        'crop': crop,
                        'plannedharvest': plannedharvest,
                        'fertilizer1' : fertilizer1,
                        'fertilizer2' : fertilizer2,
                        'harvestquantity' : harvestquantity,
                        'shippedthrough' : shippedthrough
                      };

                      final url = Uri.parse('http://172.18.76.186:3000/createcrop');
                      final response = await http.post(
                        url,
                        body: formData,
                      );

                      if (response.statusCode == 200) {
                        // The request was successful
                        final responseData = response.body;
                        print(responseData);
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Response Data'),
                              content: Text(responseData),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                        // Do something with the response data
                      } else {
                        // The request failed
                        print('Request failed with status: ${response.statusCode}.');
                      }
                    },
                      child: Text(
                        'Save' ,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
              SizedBox(
                height: 25,
              ),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.green.shade800,
                    child: MaterialButton(
                        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                        minWidth: MediaQuery.of(context).size.width*0.8,
                        onPressed: (){
                      Navigator.pushNamed(context, 'location');
                    },
                      child: Text(
                        'Reset' ,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ],


        ),
      ),
    );
  }
  // Widget ImageProfile() {
  //   return Stack(
  //     children: <Widget>[
  //       CircleAvatar(
  //         radius: 70.0,
  //         backgroundImage:AssetImage(
  //             "assets/images/f12.jpg") ,
  //       ),
  //       Positioned(
  //           bottom: 20.0,
  //           right: 20.0,
  //           child: InkWell(
  //             onTap: () {
  //               showModalBottomSheet(context: context,
  //                 builder: ((builder) => bottomSheet()),);
  //             },
  //             child: Icon(
  //               Icons.camera_alt,
  //               color: Colors.teal,
  //               size: 28.0,
  //             ),
  //           ))
  //
  //     ],
  //   );
  // }
  //
  // Widget bottomSheet() {
  //   return Container(
  //     height: 100.0,
  //     width: MediaQuery
  //         .of(context)
  //         .size
  //         .width,
  //     margin: EdgeInsets.symmetric(
  //         horizontal: 20,
  //         vertical: 20
  //     ),
  //     child: Column(
  //       children: [
  //         Text('Choose the Way', style: TextStyle(
  //           fontSize: 20,
  //         ),),
  //         SizedBox(
  //           height: 20,
  //         ),
  //         Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //           children: [
  //             ElevatedButton.icon(
  //               onPressed: () {
  //                 takePhoto(ImageSource.camera);
  //               },
  //               icon: Icon(Icons.camera),
  //               label: Text('Camera'),
  //
  //             ),
  //             ElevatedButton.icon(
  //               onPressed: () {
  //                 takePhoto(ImageSource.gallery);
  //               },
  //               icon: Icon(Icons.image),
  //               label: Text('Gallery'),
  //
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }
  //
  // void takePhoto(ImageSource source) async {
  //   // ignore: deprecated_member_use
  //   final pickedFile = await _picker.getImage(
  //     source: source,
  //   );
  //   setState(() {
  //     _imageFile = pickedFile!;
  //   });
  // }
}
