import 'package:flutter/material.dart';
import 'package:fuel_app/customer_login.dart';

import 'station_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipRRect(
            child: Center(
              child: Image.asset("assets/fuel.png",
              height: 500,
                width: 250,
              ),
            ),
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(170, 50),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)),),

            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const CustomerLoginPage();
              },),);
            },
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text("Customer",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 27),
                ),
              ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: const Size(170, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const StationLoginPage();
              },),);
            },
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text("Station",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 27),
              ),
            ),
          ),
        ],
      )

    );
  }
}
