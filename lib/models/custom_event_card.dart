import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  const EventCard({super.key, required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(60), // Makes the image rounded
          child: Image.network(
            imageUrl,
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60), // Match image radius
            color: Colors.black.withOpacity(0.5), // Overlay for text visibility
          ),
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
