import 'package:flutter/material.dart';
import 'package:medbook/datas/datas.dart';
import 'package:medbook/themes/colors.dart';
import 'package:medbook/view/book_review.dart';
import 'package:medbook/widgets/widgets.dart';

class ECommercePage extends StatelessWidget {
  const ECommercePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 15,
                        bottom: 10,
                      ),
                      child: Text(
                        "Welcome",
                        style: TextStyle(
                            color: headingColor,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search...',
                          prefixIcon: IconButton(
                            icon: const Icon(Icons.search),
                            onPressed: () {},
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    // left: 15,
                    top: 20,
                    bottom: 10,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 40,
                        width: 200,
                        child: TabBar(
                          labelColor: highlightColor,
                          unselectedLabelColor: subheadingColor,
                          indicatorColor: highlightColor,
                          tabs: [
                            Tab(
                              child: Text(
                                "New",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                            Tab(
                              child: Text(
                                "Best Seller",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 280,
                  child: TabBarView(
                    children: [
                      NewListWidget(),
                      BestSellerListWidget(),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Text(
                      "Popular",
                      style: TextStyle(
                          color: headingColor,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: popularBooks.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: (() {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const Bookreview(),
                              ),
                            );
                          }),
                          child: PopularListWidget(
                            imageUrl: popularBooks[index]["imgUrl"],
                            bookName: popularBooks[index]["bookName"],
                            authorName: popularBooks[index]["author"],
                            price: popularBooks[index]["price"],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
