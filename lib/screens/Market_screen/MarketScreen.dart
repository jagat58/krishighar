import 'package:flutter/material.dart';
import 'package:krishighar/screens/Market_screen/marketdata.dart';
import 'package:krishighar/screens/Market_screen/product/agrochemical.dart';
import 'package:krishighar/screens/Market_screen/product/fertilizer.dart';
import 'package:krishighar/screens/Market_screen/product/hardware.dart';
import 'package:krishighar/screens/Market_screen/product/seed.dart';

class MarketScreen extends StatelessWidget {
  MarketScreen({Key? key}) : super(key: key);

  // Define a list of routes corresponding to each product
  final List<Widget Function()> routes = [
    () => Seed(),
    () => Fertilizer(),
    () => agroChemical(),
    () => Hardware(),
    // Add more routes as needed
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 141, 7),
        title: Text("Market Screen"),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(20), // Padding around the GridView
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 40,
        ),
        itemCount: MarketDataList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              if (index >= 0 && index < routes.length) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => routes[index]()),
                );
              } else {
                print("Invalid index or route not found.");
              }
            },
            child: Container(
              padding: EdgeInsets.all(20), // Padding around the Container
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 252, 252, 252),
                borderRadius: BorderRadius.circular(17),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 187, 186, 186).withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 20,
                    offset: Offset(5, 5), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: screenHeight / 15,
                    backgroundColor: Colors.transparent,
                    child: ClipOval(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Image(
                          image: AssetImage(
                            MarketDataList[index]['imagepath'],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    MarketDataList[index]['name'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MarketScreen(),
  ));
}
