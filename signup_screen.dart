import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


import 'dashboard_producere.dart';
import 'dashboardbuyer.dart';
import 'dashboardlogistics.dart';
import 'dashboardwarehouse.dart';
import 'package:supplyproof/model/user_model.dart';
import 'package:http/http.dart' as http;



enum Role {  Buyer, Producer, Logistics, Warehouse }
class MySignupscreen extends StatefulWidget {
  const MySignupscreen({Key? key}) : super(key: key);

  @override
  State<MySignupscreen> createState() => _MySignupscreenState();
}

class _MySignupscreenState extends State<MySignupscreen> {
  final _auth = FirebaseAuth.instance;
  final TextEditingController phoneController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final firstNameEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final mobileEditingController = new TextEditingController();
  final locationEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final confirmpasswordEditingController = new TextEditingController();
  final roleEditingController =new TextEditingController();

  Role _selectedRole =Role.Buyer;


  @override
  void initState() {
    super.initState();


    dateController.text = "";
  }

  Widget build(BuildContext context) {
    final firstNamefield = TextFormField(
      autofocus: false,
      controller: firstNameEditingController,
      keyboardType: TextInputType.name,
      validator: (value){
        RegExp regex = new RegExp(r'^.{3,}$');
        if (value!.isEmpty){
          return('First name is Required for Login');
        }
        if(!regex.hasMatch(value)){
          return ("Please Enter Valid  First name (Min. 3 Character");
        }
      },
      onSaved: (value) {
        firstNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'User Name',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),

          )
      ),
    );
    final emailfield = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
      validator:(value){
        if(value!.isEmpty){
          return ("Please Enter a valid email");
        }
        if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9+_.-]+.[a-z]")
            .hasMatch(value)){
          return("please Enter a valid email");
        }
        return null;
      } ,
      onSaved: (value) {
        emailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'Email',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),

          )
      ),
    );
    final mobilefield = TextFormField(
      autofocus: false,
      controller: mobileEditingController,
      keyboardType: TextInputType.emailAddress,
      validator: (value){
        RegExp regex = new RegExp(r'^.{10,}$');
        if (value!.isEmpty){
          return('phone no is Required for Login');
        }
        if(!regex.hasMatch(value)){
          return ("Please Enter Valid phone no(Min. 10 Character");
        }
      },
      onSaved: (value) {
        mobileEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.mobile_friendly),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'Mobile',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),

          )
      ),
    );
    final locationfield = TextFormField(
      autofocus: false,
      controller: locationEditingController,
      keyboardType: TextInputType.emailAddress,
      validator: (value){
        RegExp regex = new RegExp(r'^.{3,}$');
        if (value!.isEmpty){
          return('location  is Required for SignUp');
        }
        if(!regex.hasMatch(value)){
          return ("Please Enter Valid Location(Min. 3 Character");
        }
      },
      onSaved: (value) {
        locationEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.location_on),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'Location',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),

          )
      ),
    );

    final passwordfield = TextFormField(
      autofocus: false,
      obscureText: true,
      controller: passwordEditingController,

      validator: (value){
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty){
          return('Password is Required for Login');
        }
        if(!regex.hasMatch(value)){
          return ("Please Enter Valid Password(Min. 6 Character");
        }
      },
      onSaved: (value) {
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'Password',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),

          )
      ),
    );
    final confirmpasswordfield = TextFormField(
      obscureText: true,
      autofocus: false,
      controller: confirmpasswordEditingController,
      validator: (value) {
        if(confirmpasswordEditingController.text!= passwordEditingController.text){
          return "Password dont match";
        }
        return null;
      } ,


      onSaved: (value) {
        confirmpasswordEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'Confirm Password',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),

          )
      ),
    );

    return Scaffold(
        backgroundColor: Color(0xffECF2FF),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back,color: Colors.green,),
            onPressed: (){
              Navigator.pushNamed(context, 'login_screen');
            },
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              color: Color(0xffECF2FF),
              child: Padding(
                padding: const EdgeInsets.all(36),
                child: Form(
                  key: _formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[


                        SizedBox(
                          height: 10,
                        ),
                        firstNamefield,
                        SizedBox(
                          height: 25,
                        ),
                        emailfield,
                        SizedBox(
                          height: 25,
                        ),
                        mobilefield,

                        SizedBox(
                          height: 25,
                        ),
                        locationfield,
                        SizedBox(
                          height: 25,
                        ),
                        passwordfield,
                        SizedBox(
                          height: 25,
                        ),
                        confirmpasswordfield,
                        SizedBox(
                          height: 25,
                        ),

                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Text('Select A Role', style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.green.shade800

                            ),),
                          ],
                        ),
                        DropdownButtonFormField<Role>(
                          value: _selectedRole,
                          hint: Text('Choose your Role',style: TextStyle(color: Colors.blueGrey, )),
                          isExpanded: false,



                          items: [
                            DropdownMenuItem(
                              value: Role.Buyer,
                              child: Text('Buyer'),
                            ),
                            DropdownMenuItem(
                              value: Role.Producer,
                              child: Text('Producer'),
                            ),
                            DropdownMenuItem(
                              value: Role.Logistics,
                              child: Text('Logistics'),
                            ),
                            DropdownMenuItem(
                              value: Role.Warehouse,
                              child: Text('Warehouse'),
                            ),
                          ],
                          onChanged: (value) {
                            setState(() {
                              _selectedRole = value!;
                              roleEditingController.text =value as String;
                            });
                          },
                          // validator: ,

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
                            minWidth: MediaQuery.of(context).size.width,
                            onPressed: (){
                              final String email = emailEditingController.text.trim();
                              final String  password = passwordEditingController.text.trim();
                              final String confirmpassword =confirmpasswordEditingController.text.trim();
                              if(password ==confirmpassword){
                                switch(_selectedRole){
                                  case Role.Producer:
                                    signUp(firstNameEditingController.text, emailEditingController.text, mobileEditingController.text, passwordEditingController.text,  'Producer',locationEditingController.text);
                                    Navigator.pushAndRemoveUntil(context,
                                        MaterialPageRoute(builder: (context) => MydashboardProducer()), (route) => false);

                                    break;
                                  case Role.Buyer:
                                    signUp(firstNameEditingController.text, emailEditingController.text, mobileEditingController.text, passwordEditingController.text,  'Buyer',locationEditingController.text);
                                    Navigator.pushAndRemoveUntil(context,
                                        MaterialPageRoute(builder: (context) => Mydashboardbuyer()), (route) => false);


                                    break;
                                  case Role.Logistics:
                                    signUp(firstNameEditingController.text, emailEditingController.text, mobileEditingController.text, passwordEditingController.text,  'Logistics',locationEditingController.text);
                                    Navigator.pushAndRemoveUntil(context,
                                        MaterialPageRoute(builder: (context) => Mydashboardlogistics()), (route) => false);


                                    break;
                                  case Role.Warehouse:
                                    signUp(firstNameEditingController.text, emailEditingController.text, mobileEditingController.text, passwordEditingController.text ,  'Warehouse',locationEditingController.text);
                                    Navigator.pushAndRemoveUntil(context,
                                        MaterialPageRoute(builder: (context) => Mydashboardwarehouse()), (route) => false);


                                    break;

                                }
                              }else {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context){
                                      return AlertDialog(
                                        title:  Text('Error'),
                                        content: Text('Wrong Credentials'),
                                        actions: [
                                          TextButton(
                                              onPressed:(){
                                                Navigator.of(context).pop();
                                              },
                                              child: Text('Ok! Try again'))
                                        ],
                                      );
                                    });
                              }




                            },
                            child: Text(
                              'Sign Up' ,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),

                        )
                      ]


                  ),
                ),
              ),
            ),
          ),
        )


    );
  }


  void signUp(String name, String email, String mobile ,String password, String role, String location) async{
    CircularProgressIndicator();
    if(_formKey.currentState!.validate())
    {
      // print("role : $role");
      final Map<String, String> formData = {
        'name': name,
        'email': email,
        'mobile': mobile,
        'location' : location
      };

      // Send a POST request to the Node.js endpoint
      if(role =='Producer'){
        try {
          // final response = await http.post(
          //   //Uri.parse('http://172.18.76.186:3000/createfarmer'),
          //   //body: formData,
          // );
          // if (response.statusCode == 200)
            if (true){
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Form submitted successfully')));
          } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Form submission failed')));
          }
        } catch (error) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Error: $error')));
        }
      }
      if(role=='Logistics'){
        try {
          final response = await http.post(
            Uri.parse('http://172.18.76.186:3000/createlogistics'),
            body: formData,
          );
          if (response.statusCode == 200) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Form submitted successfully')));
          } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Form submission failed')));
          }
        } catch (error) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Error: $error')));
        }
      }
      if(role=='Warehouse'){
        try {
          final response = await http.post(
            Uri.parse('http://172.18.76.186:3000/createwarehouse'),
            body: formData,
          );
          if (response.statusCode == 200) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Form submitted successfully')));
          } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Form submission failed')));
          }
        } catch (error) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Error: $error')));
        }
      }
      if(role=='Buyer'){
        try {
          final response = await http.post(
            Uri.parse('http://172.18.76.186:3000/createbuyer'),
            body: formData,
          );
          if (response.statusCode == 200) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Form submitted successfully')));
          } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Form submission failed')));
          }
        } catch (error) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Error: $error')));
        }
      }

      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailToFirestore()})
          .catchError((e) {
        Fluttertoast.showToast(msg : e!.message);
      });

      // Create a map with the form data

    }
  }
  postDetailToFirestore() async{

    FirebaseFirestore firebaseFirestore =FirebaseFirestore.instance;
    User? user = _auth.currentUser;
    UserModel userModel = UserModel();
    userModel.email =user!.email;
    userModel.mobile = mobileEditingController.text;
    userModel.uid =user.uid;
    userModel.firstname =firstNameEditingController.text;
    userModel.location = locationEditingController.text;
    userModel.Role =roleEditingController.text;


    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());

    Fluttertoast.showToast(msg: "Account created successfully:)");

  }
}
