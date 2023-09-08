import 'package:flutter/material.dart';
import 'package:medbook/view/firsttab.dart';
import 'package:medbook/view/secondtab.dart';

class Bookreview extends StatefulWidget {
  const Bookreview({super.key});

  @override
  State<Bookreview> createState() => _BookreviewState();
}

class _BookreviewState extends State<Bookreview> with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Image(
                image:
                    AssetImage('assets/left_arrow-removebg-preview (1).png')),
            padding: const EdgeInsets.all(15),
          ),
          Container(
            padding: const EdgeInsets.only(
                bottom: 50, left: 120, right: 120, top: 40),
            height: 330,
            width: double.maxFinite,
            color: Colors.brown.shade50,
            child: Container(
              width: 100,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                      image: AssetImage('assets/siddha book.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 420,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.yellow.shade50,
                borderRadius: const BorderRadius.all(Radius.circular(18)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 18, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Siddha basic Medecine book',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'by Dr.Paul Josef sherif',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black54),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      '500',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    TabBar(
                      labelColor: Colors.black,
                      indicatorColor: Colors.white,
                      controller: tabController,
                      tabs: const [
                        Tab(text: 'Description'),
                        Tab(
                          text: 'Revied(3)',
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                          controller: tabController,
                          children: const [
                            FirstTab(),
                            SecondTab(),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
