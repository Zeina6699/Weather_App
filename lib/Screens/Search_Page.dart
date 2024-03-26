import 'package:flutter/material.dart';

import '../Services/Weather_Services.dart';

class SearchPage extends StatelessWidget {
  // const SearchPage({super.key});
  String? cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              )),
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text(
            "Search a city",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
            width: 2000,
            height: 2000,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromARGB(255, 2, 90, 97),
                  Color.fromARGB(255, 3, 184, 197),
                  Color.fromARGB(100, 20, 226, 241),
                  Color.fromARGB(255, 2, 90, 97),
                  Color.fromARGB(100, 20, 226, 241),
                  Color.fromARGB(255, 3, 184, 197),
                  Color.fromARGB(255, 3, 109, 116),
                ])),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(77, 249, 247, 247),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: Colors.black38, offset: Offset(0, 2))
                      ]),
                  child: TextField(
                    
                      onSubmitted: (data) {
                        cityName = data;
                         WeatherService service = WeatherService();
                   service.getWeatherService(cityName: cityName!);
                      },
                      decoration: InputDecoration(
                          focusColor: Colors.black,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 25),
                          label: Text("Search"),
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          hintText: "Enter a city",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                          border: OutlineInputBorder())),
                ),
              ),
            )));
  }
}
