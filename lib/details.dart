// ignore_for_file: prefer_const_literals_to_create_immutables, unused_local_variable, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';

import 'data/data.dart';
import 'widgets/rating_widget.dart';
import 'widgets/titlecard.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  double ratings = 0;
  late double rating;
  void updateRating(double value) {
    setState(() {
      ratings = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    final productid = ModalRoute.of(context)?.settings.arguments;
    final productfromList =
        products.firstWhere((element) => element["id"] == productid);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .19,
              width: double.infinity,
              color: Colors.white,
              child: Stack(
                children: [
                  titlecard(),
                  Positioned(
                    top: 55,
                    left: 15,
                    child: Text(
                      productfromList["Pname"],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  Positioned(
                    top: 110,
                    child: RatingBar.builder(
                        initialRating: 0,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4),
                        itemBuilder: ((context, index) {
                          return SizedBox(
                            height: 4,
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 3,
                            ),
                          );
                        }),
                        onRatingUpdate: (rating) {
                          print(rating);
                          rating = ratings;
                        }),
                  ),
                  Positioned(
                    top: 73,
                    left: 145,
                    child: Text(
                      '$ratings',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "About Places",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ReadMoreText(
                      productfromList["Description"],
                      trimLines: 2,
                      preDataText: productfromList["Pname"],
                      preDataTextStyle: TextStyle(fontWeight: FontWeight.w500),
                      style: TextStyle(color: Colors.black),
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: '...Show more',
                      trimExpandedText: ' show less',
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Special Facilities",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.directions_car,
                      ),
                      Text(
                        "Parking",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.alarm,
                      ),
                      Text(
                        "24x7",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.wifi,
                      ),
                      Text(
                        "Free wifi ",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(productfromList["image3"]),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Special Facilities",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey[100],
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Text("Adult"),
                      Text("02"),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  color: Colors.blueGrey[100],
                  child: Column(
                    children: [
                      Text(" Adult "),
                      Text("02"),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  color: Colors.blueGrey[100],
                  child: Column(
                    children: [
                      Text("Adult"),
                      Text("02"),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  color: Colors.blueGrey[100],
                  child: Column(
                    children: [
                      Text("Adult"),
                      Text("02"),
                    ],
                  ),
                ),
              ],
            ),
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
