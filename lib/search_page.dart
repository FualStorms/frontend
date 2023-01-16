import 'package:flutter/material.dart';
import 'package:fuel_app/fuelstatus_cus.dart';
import 'Fuel status.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController = TextEditingController();
  bool isLoading = false;
  bool hasUserSearched = false;
  String stationName = "";
  String city = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1EDF4),
      appBar: AppBar(
        title: TextField(
          controller: searchController,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              hintText: "Search location",
              border: InputBorder.none
          ),
        ),
        actions: [

          GestureDetector(
            onTap: (){
              initiateSearchMethod();
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                child: Icon(Icons.search),
              ),
            ),
          )
        ],

      ),
      body: Column(
        children: [
          Container(),
          isLoading ? const Center(child: CircularProgressIndicator(),) :stationList()
        ],
      ),
    );
  }

  initiateSearchMethod(){
    setState(() {
      isLoading = false;
      hasUserSearched = true;
    });
    city = "Ratnapura";
    stationName = "CEYPETCO";

  }

  stationList(){
    return hasUserSearched ?
    ListView.builder(
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const FuelStatus_cus();
              },),);
            },
            child: stationTile(
              city,
              stationName,
            ),
          );
        }
    ):Container();
  }

  Widget stationTile(String city, String stationName){
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 0.2,
                blurRadius: 5,
                offset: const Offset(0.0, 5.0)
            )
          ]
      ),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      padding: const EdgeInsets.symmetric(vertical: 3,),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        title: Text(stationName),
        subtitle: Text(city),
      ),
    );
  }
}