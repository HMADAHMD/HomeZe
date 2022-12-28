import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int selectedindex = 0;
    void _onItemTapped(int index) {
      setState(() {
        selectedindex = index;
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF332FD0),
          title: Text(
            "HomeZe",
            style:
                GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.w600),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.notifications_active_outlined,
                  size: 25.0,
                ),
              ),
            )
          ],
        ),
        drawer: Drawer(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Work'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
          selectedItemColor: Color(0xFF332FD0),
          onTap: _onItemTapped,
        ),
        body: Column(
          children: [
            Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Hi William!!",
                        style: GoogleFonts.roboto(
                            fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Welcome",
                        style: GoogleFonts.roboto(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF332FD0)),
                          borderRadius: BorderRadius.circular(100)),
                      height: 60,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Find Worker...",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 170,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 170,
                        width: 130,
                        decoration: BoxDecoration(
                          //border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color.fromARGB(255, 235, 239, 254),
                        ),
                        child: Image.asset("assets/images/img1.png"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 170,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color.fromARGB(255, 235, 239, 254),
                        ),
                        child: Image.asset("assets/images/img2.png"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 170,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color.fromARGB(255, 235, 239, 254),
                        ),
                        child: Image.asset("assets/images/img3.png"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 170,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color.fromARGB(255, 235, 239, 254),
                        ),
                        child: Image.asset("assets/images/img4.png"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 85,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromARGB(255, 235, 239, 254)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Subscription Packages",
                              style: GoogleFonts.poppins(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                              "Maintain your house by subscribing to\nour budget friendly monthly packages")
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 10.0, top: 5, bottom: 5),
                        child: Image.asset("assets/images/img4.png"),
                      )
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 85,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color.fromARGB(255, 235, 239, 254)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Tasker of the Week",
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text("Category: Plumber"),
                        Text("Tasks Performed: 23"),
                        Text("Ratings: 'Very Professional'")
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/img3.png",
                          scale: 70,
                        ),
                        Text("Jacob Steven")
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 170,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color.fromARGB(255, 235, 239, 254)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Create A Task",
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        Text(
                            "Briefly describe about the problem\nand take few pictures of that and\nstate your price."),
                        Container(
                          width: 270,
                          child: TextFormField(
                            decoration: const InputDecoration(
                                hintText: "type here ...",
                                border: UnderlineInputBorder()),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                                height: 50,
                                width: 50,
                                child: Icon(Icons.search))),
                        SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              height: 50,
                              width: 50,
                              child: Icon(Icons.camera_alt),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
