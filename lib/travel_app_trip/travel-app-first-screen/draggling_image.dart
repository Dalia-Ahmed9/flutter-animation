import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteranimations/travel_app_trip/travel-app-first-screen/customIconContainer.dart';
import 'package:flutteranimations/travel_app_trip/travel-app-first-screen/customnavbutton.dart';

class DraggableCardCarousel extends StatefulWidget {
  const DraggableCardCarousel({super.key});

  @override
  _DraggableCardCarouselState createState() => _DraggableCardCarouselState();
}

class _DraggableCardCarouselState extends State<DraggableCardCarousel> {
  // Sample data for the cards
  final List<Map<String, dynamic>> cardData = [
    {
      'title': 'Rio de Janeiro',
      'country': 'Brazil',
      'rating': '5.0',
      'reviews': '143 reviews',
      'image':
          'assets/images/pexels-victorfreitas-1072842.jpg', // Replace with actual image URLs
    },
    {
      'title': 'Paris',
      'country': 'France',
      'rating': '4.9',
      'reviews': '200 reviews',
      'image': 'assets/images/pexels-oidonnyboy-3857215.jpg',
    },
    {
      'title': 'Tokyo',
      'country': 'Japan',
      'rating': '4.8',
      'reviews': '180 reviews',
      'image': 'assets/images/pexels-guimaraesm-3648269.jpg',
    },
    {
      'title': 'Tokyo',
      'country': 'Japan',
      'rating': '4.8',
      'reviews': '180 reviews',
      'image': 'assets/images/pexels-elina-sazonova-1914984.jpg',
    },
  ];

  bool isfavourit = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      // Reverse the card list to display the last card at the bottom
      children: cardData.reversed.map((card) {
        return DraggableCard(
          color: isfavourit ? Colors.white : Colors.red,
          isfavourit: () {
            setState(() {
              isfavourit = !isfavourit;
            });
          },
          cardData: card,
          onCardSwiped: () {
            setState(() {
              // Remove the first card from the list and add it to the end
              final firstCard = cardData.removeAt(0);
              cardData.add(firstCard);
            });
          },
        );
      }).toList(),
    );
  }
}

class DraggableCard extends StatelessWidget {
  final Map<String, dynamic> cardData; // Data for the current card
  final VoidCallback onCardSwiped; // Callback when the card is swiped

  const DraggableCard({
    super.key,
    required this.cardData,
    required this.onCardSwiped,
    required this.isfavourit,
    required this.color,
  });
  final VoidCallback isfavourit;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Draggable(
        // The card widget displayed normally
        feedback: Material(
          color: Colors.transparent,
          child: buildCard(
              scale: 1.1,
              favourit: isfavourit,
              iconColor: color), // Slightly larger during drag
        ),

        // The widget displayed in place of the card while it's being dragged
        childWhenDragging: Container(),

        // Callback when the drag ends
        onDragEnd: (details) {
          if (details.offset.dx.abs() > 100) {
            // If dragged far enough (e.g., more than 100 pixels), consider it swiped
            onCardSwiped();
          }
        },
        // The card widget displayed normally
        child: buildCard(favourit: isfavourit, iconColor: color),
      ),
    );
  }

  // Method to build the card widget
  Widget buildCard(
      {double scale = 1,
      required VoidCallback favourit,
      required Color iconColor}) {
    return Transform.scale(
      scale: scale, // Apply scaling to the card
      child: Container(
        width: 470, // Fixed width for the card
        height: 530, // Fixed height for the card
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40), // Rounded corners
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(31, 79, 79, 79), // Shadow color
              blurRadius: 10, // Blur effect for the shadow
              offset: Offset(0, 5), // Offset for the shadow
            ),
          ],
          image: DecorationImage(
              image: AssetImage(
                cardData['image'],
              ),
              fit: BoxFit.fill),
          // Load image from the URL
          // Cover the card area with the image
        ),
        child: Stack(
          children: [
            Customnavbutton(),
            // Text content at the bottom of the card
            Positioned(
              bottom: 150,
              left: 20,
              right: 20,
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.black
                      .withOpacity(0.0), // Semi-transparent background
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Display the country
                    Text(
                      '${cardData['country']}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    // Display the city name
                    Text(
                      '${cardData['title']}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Display the rating and reviews
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.yellow, size: 18),
                        const SizedBox(width: 5),
                        Text(
                          '${cardData['rating']}',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          '${cardData['reviews']}',
                          style: const TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Favorite icon at the top-right corner
            Positioned(
              top: 10,
              right: 10,
              child: GestureDetector(
                onTap: favourit,
                child: CustomIconContainer(
                  enabledborder: true,
                  color: iconColor,
                  containerColor: Colors.transparent,
                  icon: CupertinoIcons.heart_fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
