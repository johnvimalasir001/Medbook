import 'package:flutter/material.dart';
import 'package:medbook/pages/pages.dart';
import 'package:medbook/pages/search_page.dart';
import 'package:medbook/view/book_review.dart';
import 'package:medbook/view/categories_bilder.dart';
import 'package:medbook/view/trending_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                        )),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 50, left: 20, right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Hi, Sudharsan',
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 34,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const ECommercePage(),
                                  ));
                            },
                            icon: const Icon(Icons.search),
                            color: Colors.black,
                            iconSize: 28,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 130),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20, bottom: 10),
                          child: Text(
                            'Trending',
                            style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Center(
                            child: GestureDetector(
                          child: const TrendingBuilder(),
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const Bookreview(),
                            ),
                          ),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'poppins',
                  ),
                ),
              ),
              CategoriesBuilder()
            ],
          ),
        ),
      ),
    );
  }
}
