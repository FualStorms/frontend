import 'package:flutter/material.dart';

import 'Fuel status.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Center(
             child: Image.asset("assets/fuel.png",
             height: 250,
             width: 125,
        ),
    ),
            SizedBox(height: 30,),
            TextFormField(
              decoration:InputDecoration(
                hintText: "Search Location",
                prefixIcon: IconButton(onPressed:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const FuelStatus();
                      },
                    ),
                  );
                },
                    icon: Icon(Icons.search)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),

            ),
    ]
        ),
      ),

    );
  }
}
