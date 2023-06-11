import 'package:flutter/material.dart';

import '../data/data.dart';

class titlecard extends StatelessWidget {
  const titlecard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final productid =
        ModalRoute.of(context)?.settings.arguments; //id_from_previous_page
    //fetch_the_first_map_value_from_list_wich_satisfy
    final productfromList =
        products.firstWhere((element) => element["id"] == productid);
    return Positioned(
      left: 250,
      top: 50,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(productfromList["image2"]),
                fit: BoxFit.fill)),
        height: 100,
        width: 100,
      ),
    );
  }
}
