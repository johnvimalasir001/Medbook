import 'package:flutter/material.dart';
import 'package:medbook/datas/datas.dart';
import 'package:medbook/view/Trending.dart';

class TrendingBuilder extends StatelessWidget {
  const TrendingBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) {
            return TrendingPage(
              imgurl: popularBooks[index]["imgUrl"],
              booksname: popularBooks[index]["bookName"],
              authorname: popularBooks[index]["author"],
              price: popularBooks[index]["price"],
              values: popularBooks[index]["rating"],
            );
          }),
    );
  }
}
