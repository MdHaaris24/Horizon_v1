import 'package:flutter/material.dart';
import 'package:horizon_v1/models/custom_event_card.dart';

class EventMenu extends StatelessWidget {

  final List<Map<String, String>> menuItems = [
    {"image": "assets/images/cat-offer.png", "title": "Birthday"},
    {"image": "assets/images/cat-offer.png", "title": "Wedding"},
    {"image": "assets/images/cat-offer.png", "title": "Reception"},
    {"image": "assets/images/cat-offer.png", "title": "Engagement"},
    {"image": "assets/images/cat-offer.png", "title": "Baby Shower"},
  ];

  EventMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250, // Adjust height for better appearance
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: (menuItems.length / 2).ceil(), // Group items into pairs
        itemBuilder: (context, index) {
          return Container(
            width: 180, // Adjust width for better spacing
            margin: EdgeInsets.all(8),
            child: Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(), // Disable nested scrolling
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // 2 Rows
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1, // Maintain aspect ratio
                    ),
                    itemCount: 2, // 2 items per column
                    itemBuilder: (context, subIndex) {
                      int actualIndex = index * 2 + subIndex;
                      if (actualIndex >= menuItems.length) return SizedBox.shrink();
                      return EventCard(
                        imageUrl: menuItems[actualIndex]["image"]!,
                        title: menuItems[actualIndex]["title"]!,
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}