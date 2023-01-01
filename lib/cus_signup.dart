import 'package:flutter/material.dart';
import 'package:fuel_app/search_page.dart';

class CustomerSignUpPage extends StatefulWidget {
  const CustomerSignUpPage({Key? key}) : super(key: key);

  @override
  State<CustomerSignUpPage> createState() => _CustomerSignUpPageState();
}

class _CustomerSignUpPageState extends State<CustomerSignUpPage> {
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
                  height: 150,
                  width: 75,
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
              SizedBox(height: 15,),
              TextFormField(
                obscureText: true,
                decoration:InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),

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
              ),
              SizedBox(height: 15,),
              TextFormField(

                decoration:InputDecoration(
                  hintText: "Vehicle Type",
                  suffixIcon: Icon(Icons.arrow_drop_down),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              TextFormField(

                decoration:InputDecoration(
                  hintText: "Fuel Type",
                  suffixIcon: Icon(Icons.arrow_drop_down),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),

              ),
              SizedBox(height: 40,),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(130, 46),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const SearchPage();
                    },),);
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
    );
  }
}
