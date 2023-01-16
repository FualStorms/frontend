import 'package:flutter/material.dart';

import 'arrival_status.dart';

class StationSignUpPage extends StatefulWidget {
  const StationSignUpPage({Key? key}) : super(key: key);

  @override
  State<StationSignUpPage> createState() => _StationSignUpPageState();
}

class _StationSignUpPageState extends State<StationSignUpPage> {
  final _formkey = GlobalKey<FormState>();
  final _usernamecontroller = TextEditingController();
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  @override
  void dispose() {
    _usernamecontroller.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset("assets/fuel.png",
                    height: 180,
                    width: 90,
                  ),
                ),

                TextFormField(
                    controller: _usernamecontroller,
                    decoration:InputDecoration(
                      hintText: "User Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter Username";
                      }
                      else if (value.length < 4) {
                        return "Username is too short";
                      }
                      return null;
                    }
                ),
                SizedBox(height: 15,),
                TextFormField(
                    controller: _emailcontroller,

                    decoration:InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter Email address";
                      }
                      else if (!value.contains("@")|| !value.contains(".")) {
                        return "Please enter a valid email address ";
                      }
                      return null;
                    }

                ),
                SizedBox(height: 15,),
                TextFormField(
                    obscureText: true,
                    decoration:InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter Password";
                      }
                      else if (value.length < 8) {
                        return "Password's characters must be 8 characters";
                      }
                      return null;
                    }

                ),
                SizedBox(height: 15,),
                TextFormField(
                    obscureText: true,
                    decoration:InputDecoration(
                      hintText: " Confirm Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please re-enter Password";
                      }
                      else if (value != _passwordcontroller.text) {
                        return "Password mismatch";
                      }
                      return null;
                    }
                ),

                SizedBox(height: 20,),
                TextFormField(

                  decoration:InputDecoration(
                    hintText: "Location",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

                SizedBox(height: 60,),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(130, 46),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    onPressed: (){
                               if (_formkey.currentState!.validate()) {
                               }
                      /*Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const ArrivalStatusPage();
                      },),);*/
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 22),
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
