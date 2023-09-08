import 'package:flutter/material.dart';
import 'package:medbook/themes/colors.dart';
import 'package:medbook/widgets/widgets.dart';

class TrendingPage extends StatelessWidget {
  const TrendingPage({
    super.key,
    required this.imgurl,
    required this.booksname,
    required this.authorname,
    required this.price,
    required this.values,
  });
  final String imgurl;
  final String booksname;
  final String authorname;
  final String price;
  final double values;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 220,
        width: 330,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: const BorderRadius.all(Radius.circular(18))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                height: 150,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(imgurl), fit: BoxFit.cover),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      overflow: TextOverflow.ellipsis,
                      booksname,
                      style: const TextStyle(
                          color: headingColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        'by $authorname',
                        style: const TextStyle(
                            color: subheadingColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    // Row(
                    //   children: [
                    //     const Icon(
                    //       Icons.currency_rupee,
                    //       color: headingColor,
                    //       size: 20,
                    //     ),
                    //     Text(
                    //       price,
                    //       style: const TextStyle(
                    //           color: headingColor,
                    //           fontSize: 20,
                    //           fontWeight: FontWeight.w400),
                    //     ),
                    //   ],
                    // ),
                    StarDisplay(
                      value: values,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
