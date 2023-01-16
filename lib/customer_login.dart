import 'package:flutter/material.dart';
import 'package:fuel_app/cus_signup.dart';

class CustomerLoginPage extends StatefulWidget {
  const CustomerLoginPage({Key? key}) : super(key: key);

  @override
  State<CustomerLoginPage> createState() => _CustomerLoginPageState();
}

class _CustomerLoginPageState extends State<CustomerLoginPage> {
  final _formkey = GlobalKey<FormState>();
  final _usernamecontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  @override
  void dispose() {
    _usernamecontroller.dispose();
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
                  height: 300,
                  width: 150,
                  ),
                ),

                TextFormField(
                  controller: _usernamecontroller,
                  decoration:InputDecoration(
                    hintText: "User Name",
                    prefixIcon: Icon(Icons.person),
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
                SizedBox(height: 30,),
                TextFormField(
                  controller: _passwordcontroller,
                  obscureText: true,
                  decoration:InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.key),
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
                SizedBox(height: 60,),
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
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 22),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Center(
                  child: Row(
                    children: [
                      Text("      Do not have an account? ",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const CustomerSignUpPage();
                        },),);
                      },
                          child: Text("Sign Up",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 18),),
                          style: ElevatedButton.styleFrom(
                            primary:Colors.white,
                          ),
                      )
                    ],
                  ),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
