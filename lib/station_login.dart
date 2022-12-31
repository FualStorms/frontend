import 'package:flutter/material.dart';

import 'stat_signup.dart';

class StationLoginPage extends StatefulWidget {
  const StationLoginPage({Key? key}) : super(key: key);

  @override
  State<StationLoginPage> createState() => _StationLoginPageState();
}

class _StationLoginPageState extends State<StationLoginPage> {
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
                  height: 300,
                  width: 150,
                ),
              ),

              TextFormField(
                decoration:InputDecoration(
                  hintText: "User Name",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),

              ),
              SizedBox(height: 30,),
              TextFormField(
                obscureText: true,
                decoration:InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.key),
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
                        return const StationSignUpPage();
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
    );
  }
}
