import 'package:farmicon/swipecard.dart';
import 'package:flutter/material.dart';

class NetworkView extends StatelessWidget {
  const NetworkView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black87,
              Colors.black,
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -10,
              left: 0,
              child: Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.transparent,
                child: const Padding(
                  padding: EdgeInsets.only(left: 10, top: 28),
                  child: Text(
                    'Search for your saved companies here',
                    style: TextStyle(color: Color(0xFFA995CE), fontSize: 16.0),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: 10,
              right: 10,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(8),
                    child: Center(
                      child: IconButton(
                        icon: Icon(Icons.filter_list),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 130,
              left: 10,
              right: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xFF865CD0),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Center(
                      child: Text(
                        'View All',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Center(
                      child: Text(
                        'Recently Visited',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Center(
                      child: Text(
                        'Saved',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned.fill(
              top: 190,
              child: SwipeCard(),
            ),
            Positioned.fill(
              top: 360,
              child: SwipeCard(),
            ),
          ],
        ),
      ),
    );
  }
}
