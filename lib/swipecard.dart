import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class SwipeCard extends StatefulWidget {
  const SwipeCard({super.key});

  @override
  State<SwipeCard> createState() => _SwipeCardState();
}

class _SwipeCardState extends State<SwipeCard> {
  int currentindex = 0;

  List images = [
    'assets/images/c1.png',
    'assets/images/c2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 180,
        child: CardSwiper(
          cardsCount: 2,
          cardBuilder: (context, index, x, y) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                images[index],
                fit: BoxFit.contain,
              ),
            );
          },
          onSwipe: (prevoius, current, direction) {
            currentindex = current!;
            return true;
          },
        ),
      ),
    );
  }
}
