import 'package:flutter/material.dart';

class StationSignUpPage extends StatefulWidget {
  const StationSignUpPage({Key? key}) : super(key: key);

  @override
  State<StationSignUpPage> createState() => _StationSignUpPageState();
}

class _StationSignUpPageState extends State<StationSignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
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
                decoration:InputDecoration(
                  hintText: "User Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                obscureText: true,
                decoration:InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),

              ),
              SizedBox(height: 20,),
              TextFormField(
                obscureText: true,
                decoration:InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                obscureText: true,
                decoration:InputDecoration(
                  hintText: " Confirm Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
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
                  onPressed: (){},
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
    );
  }
}
