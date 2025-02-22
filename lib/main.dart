import 'package:flutter/material.dart';

void main() {
  runApp(const day_3());
}

class day_3 extends StatelessWidget {
  const day_3({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Advance UI",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Advance UI"),
          backgroundColor: Colors.blueAccent,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
        ),
        backgroundColor: Colors.red,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Image(
                image: NetworkImage(
                  "https://www.shutterstock.com/image-vector/abstract-background-random-numbers-gray-260nw-244169761.jpg",
                ),
              ),
              Image.network(
                "https://media.assettype.com/theceo%2Fimport%2F2020%2F08%2FAll-about-Random-Number-Generators-RNGs-and-its-use-cases.jpg",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
