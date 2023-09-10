import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Exercise: Stateful Widget'),
        ),
        body: LikeButtonWithStar(),
      ),
    );
  }
}

class LikeButtonWithStar extends StatefulWidget {
  @override
  _LikeButtonWithStarState createState() => _LikeButtonWithStarState();
}

class _LikeButtonWithStarState extends State<LikeButtonWithStar> {
  bool isLiked = false;
  int likeCount = 40;

  void toggleLike() {
    setState(() {
      if (isLiked) {
        isLiked = false;
        likeCount--;
      } else {
        isLiked = true;
        likeCount++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            'assets/images/images.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            const SizedBox(
              width: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 155, top: 5),
              child: Text(
                'Eiffel Tower',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 10,
            ), // Add some spacing between "Eiffel Tower" and the new text
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 30),
              child: GestureDetector(
                onTap: toggleLike,
                child: Icon(
                  isLiked ? Icons.star : Icons.star_border,
                  size: 40.0,
                  color: isLiked
                      ? Colors.red
                      : const Color.fromARGB(255, 255, 0, 0),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0, top: 30),
              child: Text(
                '$likeCount',
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 15.0,
          ), // Add padding for the new text
          child: Text(
            'Locally nicknamed "La dame de fer"', // Add your description text
            style: TextStyle(fontSize: 14),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15.0, top: 50),
          child: Row(
            children: [
              SizedBox(
                  width:
                      30), // Add spacing between like count and the new icons
              Column(
                children: [
                  Icon(
                    Icons.call, // Add your call icon
                    size: 40.0,
                    color: Colors.blue, // Customize the icon color as needed
                  ),
                  Text(
                    'CALL', // Add text below the call icon
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              SizedBox(
                  width:
                      100), // Increase the spacing between call and route icons
              Column(
                children: [
                  Icon(
                    Icons.directions, // Add your route icon
                    size: 40.0,
                    color: Colors.blue, // Customize the icon color as needed
                  ),
                  Text(
                    'ROUTE', // Add text below the directions icon
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              SizedBox(
                  width:
                      100), // Increase the spacing between route and share icons
              Column(
                children: [
                  Icon(
                    Icons.share, // Add your share icon
                    size: 40.0,
                    color: Colors.blue, // Customize the icon color as needed
                  ),
                  Text(
                    'SHARE', // Add text below the share icon
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15.0, top: 50),
          child: Text(
            'The tower is 330 metres (1,083 ft) tall,[7] about the same height as an 81-storey building, and the tallest structure in Paris. Its base is square, measuring 125 metres (410 ft) on each side. During its construction, the Eiffel Tower surpassed the Washington Monument to become the tallest human-made structure in the world, a title it held for 41 years until the Chrysler Building in New York City was finished in 1930. It was the first structure in the world to surpass both the 200-metre and 300-metre mark in height.',
            style: TextStyle(fontSize: 15),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15.0, top: 50),
          child: Text(
            'Source: Wikipedia',
            style: TextStyle(fontSize: 15),
          ),
        ),
      ],
    );
  }
}
