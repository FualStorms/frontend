import 'package:flutter/material.dart';

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
             height: 300,
             width: 150,
        ),
    ),
            SizedBox(height: 30,),
            TextFormField(
              decoration:InputDecoration(
                hintText: "Search Location",
                prefixIcon: Icon(Icons.search_rounded),
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
