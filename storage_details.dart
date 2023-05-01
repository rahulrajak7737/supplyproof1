import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class Mystoragedetails extends StatefulWidget {
  const Mystoragedetails({Key? key}) : super(key: key);

  @override
  State<Mystoragedetails> createState() => _MystoragedetailsState();
}

final warehousenameController = TextEditingController();
final warehouseaddressController = TextEditingController();
final registrationController = TextEditingController();
final totalcapacityController = TextEditingController();
final storagenumberController = TextEditingController();
final cropnumberController = TextEditingController();
final arrivaldateController = TextEditingController();
final testcertificateController = TextEditingController();
final exportcertificateController = TextEditingController();
final shipmentdateController = TextEditingController();
final containernoController = TextEditingController();
final shippedtoController = TextEditingController();

class _MystoragedetailsState extends State<Mystoragedetails> {
  late String _Value="a";
  List<String> _opti= ['Cold Storage',  'Regular Storage'];
  TextEditingController arrivaldateController =TextEditingController();
  TextEditingController shipmentdateController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF2FF),
      appBar: AppBar(
        title: Text('Storage  Details', style: TextStyle(
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
                  Text('Choose the Storage type?', style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),),
                ],
              ),
            ),

            for (String option in _opti) ...[
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
                      padding: const EdgeInsets.all(0.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text('Warehouse Name', style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Warehouse Address', style: TextStyle(
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
                        Text('Registration Number', style: TextStyle(
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
                        Text('Total  Storage Capacity', style: TextStyle(
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
                        Text('Storage ID', style: TextStyle(
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
                        Text('Crop Number', style: TextStyle(
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
                        Text('Arrival  Date', style: TextStyle(
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
                        Text('Test Certificate', style: TextStyle(
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
                        Text('Shipment Date', style: TextStyle(
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
                        Text('Container Number', style: TextStyle(
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
                        Text('Shipped to', style: TextStyle(
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
                              controller: warehousenameController,
                              autofocus: true,
                              obscureText: false,

                              decoration: InputDecoration(
                                // hintText: 'Enter Warehouse Name ',

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
                               controller: registrationController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                // hintText: 'Enter the Registration Number',
                                // // hintStyle: FlutterFlowTheme.of(context).bodySmall,
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
                               controller: totalcapacityController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Tonnes',

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
                               controller: storagenumberController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                              hintText: 'Section Number',
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

                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Color(0xFF448C83),
                                width: 2,
                              ),
                            ),
                            child: TextFormField(
                               controller: cropnumberController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                // hintText: 'Enter the Crop Number',
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
                               controller: arrivaldateController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                // hintText: 'Choose the Arrival date',
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
                                      arrivaldateController.text = DateFormat('dd-MM-yyyy').format(pickeddate);
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
                               controller: testcertificateController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Certificate URL',
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

                               controller: shipmentdateController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(

                                // hintText: 'Enter Shipment Date',

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
                                      shipmentdateController.text = DateFormat('dd-MM-yyyy').format(pickeddate);
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
                               controller: containernoController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                // hintText: 'Enter the container number',
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

                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Color(0xFF448C83),
                                width: 2,
                              ),
                            ),
                            child: TextFormField(
                               controller: shippedtoController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                               hintText: ' Recievers Details',
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
              height: 25,
            ),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(30),
              color: Colors.green.shade800,
              child: MaterialButton(
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  minWidth: MediaQuery.of(context).size.width*0.8,
                  onPressed: ()async{
                    final storagetype = _Value;
                    final warehousename = warehousenameController.text;
                    final warehouseaddress = warehouseaddressController.text;
                    final registration = registrationController.text;
                    final totalcapacity = totalcapacityController.text;
                    final storagenumber = storagenumberController.text;
                    final cropnumber = cropnumberController.text;
                    final arrivaldate = arrivaldateController.text;
                    final testcertificate = testcertificateController.text;
                    final exportcertificate = exportcertificateController.text;
                    final shipmentdate = shipmentdateController.text;
                    final containerno = containernoController.text;
                    final shippedto = shippedtoController.text;

                    final Map<String, String> formData = {
                      'storagetype': storagetype,
                      'warehousename': warehousename,
                      'warehouseaddress': warehouseaddress,
                      'registration': registration,
                      'totalcapacity' : totalcapacity,
                      'storagenumber' : storagenumber,
                      'cropnumber' : cropnumber,
                      'arrivaldate' : arrivaldate,
                      'testcertificate': testcertificate,
                      'exportcertificate' : exportcertificate,
                      'shipmentdate' : shipmentdate,
                      'containerno' : containerno,
                      'shippedto' : shippedto
                    };

                    final url = Uri.parse('http://172.18.76.186:3000/updatecropbywarehouse');
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
              height: 20,
            ),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(30),
              color: Colors.green.shade800,
              child: MaterialButton(
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  minWidth: MediaQuery.of(context).size.width*0.8,
                  onPressed: (){
                    Navigator.pushNamed(context, 'Storage_details');
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
            //       final storagetype = _Value;
            //       final warehousename = warehousenameController.text;
            //       final warehouseaddress = warehouseaddressController.text;
            //       final registration = registrationController.text;
            //       final totalcapacity = totalcapacityController.text;
            //       final storagenumber = storagenumberController.text;
            //       final cropnumber = cropnumberController.text;
            //       final arrivaldate = arrivaldateController.text;
            //       final testcertificate = testcertificateController.text;
            //       final exportcertificate = exportcertificateController.text;
            //       final shipmentdate = shipmentdateController.text;
            //       final containerno = containernoController.text;
            //       final shippedto = shippedtoController.text;
            //
            //       final Map<String, String> formData = {
            //         'storagetype': storagetype,
            //         'warehousename': warehousename,
            //         'warehouseaddress': warehouseaddress,
            //         'registration': registration,
            //         'totalcapacity' : totalcapacity,
            //         'storagenumber' : storagenumber,
            //         'cropnumber' : cropnumber,
            //         'arrivaldate' : arrivaldate,
            //         'testcertificate': testcertificate,
            //         'exportcertificate' : exportcertificate,
            //         'shipmentdate' : shipmentdate,
            //         'containerno' : containerno,
            //         'shippedto' : shippedto
            //       };
            //
            //       final url = Uri.parse('http://172.18.76.186:3000/updatecropbywarehouse');
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
