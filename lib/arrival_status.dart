import 'package:flutter/material.dart';

class ArrivalStatusPage extends StatefulWidget {
  const ArrivalStatusPage({Key? key}) : super(key: key);

  @override
  State<ArrivalStatusPage> createState() => _ArrivalStatusPageState();
}

class _ArrivalStatusPageState extends State<ArrivalStatusPage> {
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
                  height: 120,
                  width: 60,
                ),
              ),

              Text("Arrival Status",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.red),),
              SizedBox(height: 10,),
              Text("Arrival Date",style: TextStyle(fontSize: 15),),
              SizedBox(height: 5,),
              TextFormField(
                decoration:InputDecoration(
                  suffixIcon: Icon(Icons.calendar_month),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              SizedBox(height: 10,),
              Text("Arrival Time",style: TextStyle(fontSize: 15),),
              SizedBox(height: 5,),
              TextFormField(
                decoration:InputDecoration(
                  suffixIcon: Icon(Icons.watch_later_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              SizedBox(height: 15,),
              Text("Fuel Type (By Liters)",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.red),),
              SizedBox(height: 10,),
              Text("Petrol",style: TextStyle(fontSize: 15),),
              SizedBox(height: 5,),
              TextFormField(
                decoration:InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              SizedBox(height: 10,),
              Text("Desel",style: TextStyle(fontSize: 15),),
              SizedBox(height: 5,),
              TextFormField(
                decoration:InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Text("Stock Finished",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ],
              ),

              SizedBox(height: 15,),
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
