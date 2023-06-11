import 'package:flutter/material.dart';
import 'package:make_my_trip/data/data.dart';
import 'package:make_my_trip/details.dart';

class placess extends StatelessWidget {
  const placess({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 0.8,
      shrinkWrap: true,
      children: List.generate(
          products.length,
          (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () => gotoNext(context, products[index]["id"]),
                  child: Container(
                    height: 400,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              "${products[index]["image1"]}",
                            ),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(10)),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 10,
                          top: 10,
                          child: Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.white,
                                ),
                                Text(
                                  "${products[index]["View"]}",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 180,
                          left: 20,
                          child: Text(
                            "${products[index]["Pname"]}",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}

void gotoNext(BuildContext context, productid) {
  Navigator.of(context).pushNamed("Second", arguments: productid);
}
