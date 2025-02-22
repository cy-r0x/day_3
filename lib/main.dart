import 'package:flutter/material.dart';

void main() {
  runApp(const day_3());
}

class day_3 extends StatefulWidget {
  const day_3({super.key});
  @override
  day3State createState() => day3State();
}

class day3State extends State<day_3> {
  int idx = 0;

  List<Widget> pages = [Text("Home"), Text("Search"), Text("Settings")];

  void onClick(int idx) {
    setState(() {
      this.idx = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Advance UI",
      home: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.blue,
          child: ListView(
            children: [
              SizedBox(
                height: 100,
                child: DrawerHeader(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  duration: Duration(milliseconds: 1000),
                  child: Row(
                    spacing: 10,
                    children: [
                      Icon(Icons.people, color: Colors.white, size: 24),
                      Text("Contact", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: Colors.white),
                title: Text(
                  "Home",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                hoverColor: const Color.fromARGB(255, 223, 223, 223),
                textColor: Colors.white,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.home, color: Colors.white),
                title: Text(
                  "Home",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                hoverColor: const Color.fromARGB(255, 223, 223, 223),
                textColor: Colors.white,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.home, color: Colors.white),
                title: Text(
                  "Home",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                hoverColor: const Color.fromARGB(255, 223, 223, 223),
                textColor: Colors.white,
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Advance UI"),
          backgroundColor: Colors.blueAccent,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
        ),
        backgroundColor: Colors.blueGrey,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [pages[idx]],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: onClick,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Setting",
            ),
          ],
        ),
      ),
    );
  }
}
