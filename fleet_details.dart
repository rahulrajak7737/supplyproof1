import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class Myfleetdetails extends StatefulWidget {
  const Myfleetdetails({Key? key}) : super(key: key);

  @override
  State<Myfleetdetails> createState() => _MyfleetdetailsState();
}

final cropnoController = TextEditingController();
final harvestdateController = TextEditingController();
final emptyweightController = TextEditingController();
final shipmentweightController = TextEditingController();
final vehiclenoController = TextEditingController();
final drivernoController = TextEditingController();
final deliverydateController = TextEditingController();
final warehouseinchargeController = TextEditingController();
final warehouseaddressController = TextEditingController();

class _MyfleetdetailsState extends State<Myfleetdetails> {
  late String _Value="a";
  List<String> _opt= ['Cold Transport',  'Regular Transport'];
  TextEditingController harvestdateController =TextEditingController();
  TextEditingController deliverydateController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF2FF),
      appBar: AppBar(
        title: Text('Fleet Details', style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 26,
        ),),
        backgroundColor: Colors.green.shade800,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Choose the Transportation type?', style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),),
                ],
              ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Crop Number', style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Harvested Date', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),),

                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Empty Vehicle Weight', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),),

                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Full vehicle Weight', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),),

                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Vehicle Number', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),),

                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Driver Number', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),),

                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Delivery Date', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),),

                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Warehouse Incharge', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),),

                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Warehouse Address', style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),),

                      ],
                    ),

                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        // Generated code for this Container Widget...
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
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
                      children: [
                        // Generated code for this Container Widget...
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
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
                               controller: harvestdateController,
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
                                 harvestdateController.text = DateFormat('dd-MM-yyyy').format(pickeddate);
                               });
                              }
                             },
                              ),
                              // style: FlutterFlowTheme.of(context).bodyMedium,
                              // validator: _model.textController1Validator.asValidator(context),
                            ),
                          ),


                      ],
                    ),
                    Row(
                      children: [
                        // Generated code for this Container Widget...
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Container(
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
                               controller: emptyweightController,
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
                              // style: FlutterFlowTheme.of(context).bodyMedium,
                              // validator: _model.textController1Validator.asValidator(context),
                            ),
                          ),
                        )

                      ],
                    ),
                    Row(
                      children: [
                        // Generated code for this Container Widget...
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
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
                               controller: shipmentweightController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: ' Tonnes/KGs',
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
                      children: [
                        // Generated code for this Container Widget...
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
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
                              controller: vehiclenoController,
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
                      children: [
                        // Generated code for this Container Widget...
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
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
                              controller: drivernoController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: "License Number",
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
                      children: [
                        // Generated code for this Container Widget...
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
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
                               controller: deliverydateController,
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
                                    deliverydateController.text = DateFormat('dd-MM-yyyy').format(pickeddate);
                                  });
                                }
                              },
                              ),
                              // style: FlutterFlowTheme.of(context).bodyMedium,
                              // validator: _model.textController1Validator.asValidator(context),
                            ),
                          ),


                      ],
                    ),
                    Row(
                      children: [
                        // Generated code for this Container Widget...
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
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
                               controller: warehouseinchargeController,
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
                      children: [
                        // Generated code for this Container Widget...
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
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
                               controller: warehouseaddressController,
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
                                // suffixIcon: Icon(
                                //   Icons.location_off_sharp,
                                //   color: Color(0xff3E54AC),
                                // ),
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
              height: 15,
            ),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(30),
              color: Colors.green.shade800,
              child: MaterialButton(
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  minWidth: MediaQuery.of(context).size.width*0.8,
                  onPressed: ()async {
                    final cropno = cropnoController.text;
                    final harvestdate = harvestdateController.text;
                    final emptyweight = emptyweightController.text;
                    final shipmentweight = shipmentweightController.text;
                    final vehicleno = vehiclenoController.text;
                    final driverno = drivernoController.text;
                    final deliverydate = deliverydateController.text;
                    final warehouseincharge = warehouseinchargeController.text;
                    final warehouseaddress = warehouseaddressController.text;

                    final Map<String, String> formData = {
                      'transportationtype': _Value,
                      'cropno': cropno,
                      'harvestdate': harvestdate,
                      'emptyweight': emptyweight,
                      'shipmentweight' : shipmentweight,
                      'vehicleno' : vehicleno,
                      'driverno' : driverno,
                      'deliverydate' : deliverydate,
                      'warehouseincharge' : warehouseincharge,
                      'warehouseaddress' : warehouseaddress
                    };

                    final url = Uri.parse('http://172.18.76.186:3000/updatecropbylogistics');
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
              height: 15,
            ),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(30),
              color: Colors.green.shade800,
              child: MaterialButton(
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  minWidth: MediaQuery.of(context).size.width*0.8,
                  onPressed: (){
                    Navigator.pushNamed(context, 'fleet_details');
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

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     ElevatedButton(onPressed:()async {
            //       final cropno = cropnoController.text;
            //       final harvestdate = harvestdateController.text;
            //       final emptyweight = emptyweightController.text;
            //       final shipmentweight = shipmentweightController.text;
            //       final vehicleno = vehiclenoController.text;
            //       final driverno = drivernoController.text;
            //       final deliverydate = deliverydateController.text;
            //       final warehouseincharge = warehouseinchargeController.text;
            //       final warehouseaddress = warehouseaddressController.text;
            //
            //       final Map<String, String> formData = {
            //         'transportationtype': _Value,
            //         'cropno': cropno,
            //         'harvestdate': harvestdate,
            //         'emptyweight': emptyweight,
            //         'shipmentweight' : shipmentweight,
            //         'vehicleno' : vehicleno,
            //         'driverno' : driverno,
            //         'deliverydate' : deliverydate,
            //         'warehouseincharge' : warehouseincharge,
            //         'warehouseaddress' : warehouseaddress
            //       };
            //
            //       final url = Uri.parse('http://172.18.76.186:3000/updatecropbylogistics');
            //       final response = await http.post(
            //         url,
            //         body: formData,
            //       );
            //
            //       if (response.statusCode == 200) {
            //         // The request was successful
            //         final responseData = response.body;
            //         print(responseData);
            //         showDialog(
            //           context: context,
            //           builder: (BuildContext context) {
            //             return AlertDialog(
            //               title: Text('Response Data'),
            //               content: Text(responseData),
            //               actions: [
            //                 TextButton(
            //                   onPressed: () {
            //                     Navigator.of(context).pop();
            //                   },
            //                   child: Text('OK'),
            //                 ),
            //               ],
            //             );
            //           },
            //         );
            //         // Do something with the response data
            //       } else {
            //         // The request failed
            //         print('Request failed with status: ${response.statusCode}.');
            //       }
            //     }, child: Text('Save', style: TextStyle(
            //         fontSize: 20,
            //         fontWeight: FontWeight.w600
            //     ),)),
            //     ElevatedButton(onPressed:(){
            //       Navigator.pushNamed(context, 'Fleet_details');
            //     }, child: Text('Reset', style: TextStyle(
            //         fontSize: 20,
            //         fontWeight: FontWeight.w600
            //     ),)),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
