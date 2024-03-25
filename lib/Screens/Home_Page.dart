import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:weather/Screens/Search_Page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                   return SearchPage();
                  }));
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ))
          ],
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text(
            "☁️☀️ - Weather News - ☀️☁️",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          width: 2000,
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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "There is no weather 💔😔",
                  style: TextStyle(fontSize: 30, 
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                  ),
                ),
                Text(
                  "Start searching now 💚🔎",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )
              ]),
        ));
  }
}
