import 'package:flutter/material.dart';

import 'widgets/placess.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
          child: Image.network(
            'https://imgak.mmtcdn.com/pwa_v3/pwa_hotel_assets/header/logo@2x.png',
            height: 45,
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.blue,
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[200],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search',
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.search)),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Popular Places ",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "View all",
                      )),
                )
              ],
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * .63,
                child: placess()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: double.infinity,
                child: MaterialButton(
                  color: Colors.blue[900],
                  onPressed: () {},
                  child: Text(
                    "Explore Now",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
