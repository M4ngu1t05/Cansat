import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  final String title = "Satelite";
  @override
  State<MyHomePage> createState() => Main();
}

class Main extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Row(
            children: [
              Column(
                children: const [
                  Icon(Icons.login),
                ],
              ),
              Column(
                children: const [
                  Align(
                    child: Text(
                      "Infomación",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: const <Widget>[
                      Icon(
                        Icons.web,
                        color: Colors.black,
                        size: 24.0,
                      ),
                      Icon(
                        Icons.wifi,
                        color: Colors.black,
                        size: 30.0,
                      ),
                      Icon(
                        Icons.upcoming,
                        color: Colors.black,
                        size: 36.0,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: const [
              Align(
                child: Text(
                  "Bienvenido de regreso \nUser_Name",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  color: Colors.blue,
                  child: ListView(
                    children: <Widget>[
                      Column(
                        children: const [
                          Text("Radiación"),
                          Icon(Icons.radar),
                          Text("30"),
                        ],
                      ),
                      Column(
                        children: const [
                          Text("Temperatura"),
                          Icon(Icons.radar),
                          Text("22.7" "°"),
                        ],
                      ),
                      Column(
                        children: const [
                          Text("Humedad"),
                          Icon(Icons.radar),
                          Text("15.9"),
                        ],
                      ),
                      Column(
                        children: [
                          const Text("Intensidad"),
                          Row(
                            children: const [Icon(Icons.radar), Text("0.8")],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Row(
            children: [Image.asset('images/map.png')],
          ),
        ),
      ],
    ));
  }
}
