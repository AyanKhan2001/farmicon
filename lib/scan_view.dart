
import 'package:farmicon/button_comp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class ScanContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    double imageSize = screenSize.width * 0.4;

    return Container(
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
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 120.0, horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/images/avatar.png',
                  height: imageSize,
                  width: imageSize,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'NIKHIL PANWAR',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                child: Text(
                  'Show my QR',
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 260,
                    height: 260,
                    color: Colors.white,
                  ),
                  Positioned(
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 140,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 15,
                              child: Icon(Icons.filter, size: 20), // Gallery icon
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 15,
                              child: Icon(Icons.flash_on_outlined), // Flash icon
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 20,
                              child: Text(
                                "1x", // Text
                                style: TextStyle(color: Colors.lime),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              EventModeToggle(),
              ShareModeToggle(),
              SizedBox(height: 20), // Add spacing between switches and buttons
              ButtonRow(),
            ],
          ),
        ),
      ),
    );
  }
}