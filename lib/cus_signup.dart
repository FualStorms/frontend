import 'package:flutter/material.dart';
import 'package:fuel_app/search_page.dart';

class CustomerSignUpPage extends StatefulWidget {
  const CustomerSignUpPage({Key? key}) : super(key: key);

  @override
  State<CustomerSignUpPage> createState() => _CustomerSignUpPageState();
}

class _CustomerSignUpPageState extends State<CustomerSignUpPage> {
  var _value = "-1";
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
                    height: 150,
                    width: 75,
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
                SizedBox(height: 15,),


                   DropdownButtonFormField(
                    decoration:InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                      )
                    ) ,
                    value: _value,
                    items: [
                      DropdownMenuItem(child: Text("Vehicle Type",style: TextStyle(color: Colors.black54),),value: "-1",),
                      DropdownMenuItem(child: Text("Car",style: TextStyle(color: Colors.black54),),value: "1",),
                      DropdownMenuItem(child: Text("Bus",style: TextStyle(color: Colors.black54),),value: "2",),
                      DropdownMenuItem(child: Text("Lorry",style: TextStyle(color: Colors.black54),),value: "3",),
                      DropdownMenuItem(child: Text("Bicycle",style: TextStyle(color: Colors.black54),),value: "4",),
                      DropdownMenuItem(child: Text("Three Wheel",style: TextStyle(color: Colors.black54),),value: "5",),

                    ],
                    onChanged: (v){},
                  ),
                SizedBox(height: 15,),


                DropdownButtonFormField(
                  decoration:InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                      )
                  ) ,
                  value: _value,
                  items: [
                    DropdownMenuItem(child: Text("Fuel Type",style: TextStyle(color: Colors.black54),),value: "-1",),
                    DropdownMenuItem(child: Text("Petrol",style: TextStyle(color: Colors.black54),),value: "1",),
                    DropdownMenuItem(child: Text("Diesel",style: TextStyle(color: Colors.black54),),value: "2",),
                  ],
                  onChanged: (v){},
                ),



                SizedBox(height: 25,),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(130, 46),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    onPressed: (){
                            if (_formkey.currentState!.validate()){
                            }
                     /* Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const SearchPage();
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
