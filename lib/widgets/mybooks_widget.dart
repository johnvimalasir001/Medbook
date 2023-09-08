import 'package:flutter/material.dart';
import 'package:medbook/themes/colors.dart';

// ignore: must_be_immutable
class MyBooksWidget extends StatelessWidget {
  final String imageUrl;
  final String bookName;
  final String authorName;
  final String purchasedate;
  const MyBooksWidget({
    super.key,
    required this.imageUrl,
    required this.authorName,
    required this.bookName,
    required this.purchasedate,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageUrl),
                ),
                color: Colors.pink,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text('Purchased on $purchasedate'),
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    bookName,
                    style: const TextStyle(
                        color: headingColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'by $authorName',
                      style: const TextStyle(
                          color: subheadingColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
