import 'package:flutter/material.dart';

class JeitaGrottoPage extends StatelessWidget {
  final List<String> smallImages = [
    'assets/jaaeta2.jpg',
    'assets/jaaeta3.jpg',
    'assets/jaaeta4.webp',
    'assets/jaaeta5.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: ClipRRect(
              child: Image.asset(
                'assets/jaaeta1.jpg',
                width: 370.0,
                height: 300.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text "Baalbek"
          Positioned(
            top: 320.0,
            left: 20.0,
            child: Text(
              'Jaaeta',
              style: TextStyle(
                fontSize: 27.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          // Text Description
          Positioned(
            top: 370.0,
            left: 20.0,
            child: Container(
              width: 370.0,
              child: Text(
                'Jaaeta Grotto,  is a natural wonder renowned for its stunning limestone formations and captivating underground caves. The grotto offers an enchanting experience with illuminated stalactites and stalagmites, creating a mesmerizing atmosphere. A visit to Jaaeta Grotto promises a unique adventure, showcasing the beauty of nature is subterranean artistry.',
                style: TextStyle(
                  fontSize: 21.0,
                  color: Colors.black38,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          // Small Images Gallery
          Positioned(
            bottom: 40.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: 130.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: smallImages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        smallImages[index],
                        width: 140.0,
                        height: 130.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}