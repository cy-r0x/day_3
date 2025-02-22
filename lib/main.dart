import 'package:cached_network_image/cached_network_image.dart';
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
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                Image(
                  image: NetworkImage(
                    "https://www.shutterstock.com/image-vector/abstract-background-random-numbers-gray-260nw-244169761.jpg",
                  ),
                ),
                Image.network(
                  "https://media.assettype.com/theceo%2Fimport%2F2020%2F08%2FAll-about-Random-Number-Generators-RNGs-and-its-use-cases.jpg",
                  fit: BoxFit.fitWidth,
                ),
                CachedNetworkImage(
                  imageUrl:
                      "https://www.shutterstock.com/image-photo/chameleon-close-eye-portrait-reptile-600nw-2466925375.jpg",
                  errorWidget:
                      (context, url, error) => Image.network(
                        "https://static.vecteezy.com/system/resources/thumbnails/012/042/292/small_2x/warning-sign-icon-transparent-background-free-png.png",
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
