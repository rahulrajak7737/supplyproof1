import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class Myproductdetails extends StatefulWidget {
  const Myproductdetails({Key? key}) : super(key: key);

  @override
  State<Myproductdetails> createState() => _MyproductdetailsState();
}

final cropnoController = TextEditingController();
final arrivalweightController = TextEditingController();
final arrivaldateController = TextEditingController();
final shipmentController = TextEditingController();
final usedforController = TextEditingController();

class _MyproductdetailsState extends State<Myproductdetails> {
  TextEditingController _date =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF2FF),
      appBar: AppBar(
        title: Text('Product Details ', style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w700,
        ),),
        backgroundColor: Colors.green.shade800,
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Crop Number", style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                        ),)
                      ],
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Arrival Weight", style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                        ),)
                      ],
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Arrival Date", style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                        ),)
                      ],
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Shipment Acceptance", style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                        ),)
                      ],
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Product Used for", style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                        ),)
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 10),
                          child: Container(
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
                            child: TextFormField(
                              controller: cropnoController,
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
                              // style: FlutterFlowTheme.of(context).bodyMedium,
                              // validator: _model.textController1Validator.asValidator(context),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 10),
                          child: Container(
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
                            child: TextFormField(
                              controller: arrivalweightController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Tonnes/KGs/Grams',
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
                              // style: FlutterFlowTheme.of(context).bodyMedium,
                              // validator: _model.textController1Validator.asValidator(context),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 10),
                          child: Container(
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
                            child: TextFormField(
                              controller: _date,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(

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
                                    lastDate: DateTime.now());
                                if (pickeddate != null) {
                                  setState(() {
                                    _date.text = DateFormat('dd-MM-yyyy').format(pickeddate);
                                  });
                                }
                              },

                              // style: FlutterFlowTheme.of(context).bodyMedium,
                              // validator: _model.textController1Validator.asValidator(context),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 10),
                          child: Container(
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
                            child: TextFormField(
                              controller: shipmentController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                               hintText: 'Yes/ No',
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
                              // style: FlutterFlowTheme.of(context).bodyMedium,
                              // validator: _model.textController1Validator.asValidator(context),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 10),
                          child: Container(
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
                            child: TextFormField(
                              controller: usedforController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                               // hintText: 'Consumption/ Processing',
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
                              // style: FlutterFlowTheme.of(context).bodyMedium,
                              // validator: _model.textController1Validator.asValidator(context),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
        Material(

          elevation: 5,
          borderRadius: BorderRadius.circular(30),
          color: Colors.green.shade800,
          child: MaterialButton(
            padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            minWidth: MediaQuery.of(context).size.width*0.8,
            onPressed: () async{
            final cropno = cropnoController.text;
            final arrivalweight = arrivalweightController.text;
            final arrivaldate = arrivaldateController.text;
            final shipment = shipmentController.text;
            final usedfor = usedforController.text;

            final Map<String, String> formData = {
            'cropno': cropno,
            'arrivalweight': arrivalweight,
            'arrivaldate': arrivaldate,
            'shipment' : shipment,
              'usedfor' : usedfor
            };

            final url = Uri.parse('http://172.18.76.186:3000/updatecropbybuyer');
            final response = await http.post(
              url,
            body: formData,
           );

            if (response.statusCode == 200) {
            // The request was successful
            //final responseData = json.decode(response.body);

           } else {
           // The request failed
           print('Request failed with status: ${response.statusCode}.');
           }
           }

            ,

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
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     ElevatedButton(onPressed: ()async {
            //       final cropno = cropnoController.text;
            //       final arrivalweight = arrivalweightController.text;
            //       final arrivaldate = arrivaldateController.text;
            //       final shipment = shipmentController.text;
            //       final usedfor = usedforController.text;
            //
            //       final Map<String, String> formData = {
            //         'cropno': cropno,
            //         'arrivalweight': arrivalweight,
            //         'arrivaldate': arrivaldate,
            //         'shipment' : shipment,
            //         'usedfor' : usedfor
            //       };
            //
            //       final url = Uri.parse('http://172.18.76.186:3000/updatecropbybuyer');
            //       final response = await http.post(
            //         url,
            //         body: formData,
            //       );
            //
            //       if (response.statusCode == 200) {
            //         // The request was successful
            //         //final responseData = json.decode(response.body);
            //         // Do something with the response data
            //       } else {
            //         // The request failed
            //         print('Request failed with status: ${response.statusCode}.');
            //       }
            //     }, child: Text("Save", style: TextStyle(
            //         fontSize: 22,
            //         fontWeight: FontWeight.w700
            //     ),)),
            SizedBox(
              height: 30,
            ),

            Material(

                elevation: 5,
                borderRadius: BorderRadius.circular(30),
                color: Colors.green.shade800,
                child: MaterialButton(
                    padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                    minWidth: MediaQuery.of(context).size.width*0.8,
                    onPressed: (){
                      Navigator.pushNamed(context, 'product_details');
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


                // ElevatedButton(onPressed:(){
                //   Navigator.pushNamed(context, 'product_details');
                // }, child: Text("Reset", style: TextStyle(
                //     fontSize: 22,
                //     fontWeight: FontWeight.w700
                // ),))
            //   ],
            // )
          ],
        ),
      ),

    );
  }
}
