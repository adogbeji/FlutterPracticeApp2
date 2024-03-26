import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top,
                left: 25,
                right: 15,
              ),
              child: const Text(
                'What are you looking for 👀?',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: SvgPicture.asset(
                'assets/icons/cart.svg',
                width: 20,
              ),
            ),
          ],
        ),

        // SEARCH BAR
         ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search For Products...',
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              fillColor: Colors.blueGrey.shade200,
              filled: true,
            ),
          ),
        ),
      ],
    );
  }
}
