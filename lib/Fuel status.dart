import 'package:flutter/material.dart';

class FuelStatus extends StatefulWidget {
  const FuelStatus({Key? key}) : super(key: key);

  @override
  State<FuelStatus> createState() => _FuelStatusState();
}

class _FuelStatusState extends State<FuelStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: Image.asset(
                  "assets/fuel.png",
                  height: 180,
                  width: 90,
                ),
              ),
              Center(
                child: Text(
                  'Imali & sons',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Current Fuel Status',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Petrol(litres)',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "100000",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Diesel(litres)',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "100000",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Vehicle Queue',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Petrol',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "4567",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Desel',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "4567",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(130, 46),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Back",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 22),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(180, 46),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Join Queue",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 22),
                      ),
                    ),
                  ),
                ],
              ),
            ])),
      ),
    );
  }
}
