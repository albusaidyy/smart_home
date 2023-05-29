import 'package:flutter/material.dart';

class Gridcard extends StatelessWidget {
  final String searchImage;
  final String searchTtile;
  final String searchDescrption;
  const Gridcard(
      {super.key,
      required this.searchImage,
      required this.searchTtile,
      required this.searchDescrption});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(24)),
        color: Color(0xFF282424),
      ),
      child: Column(
        children: [
          Image.asset(
            searchImage,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              searchTtile,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              searchDescrption,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFFFFFFFF).withOpacity(0.6),
                  fontSize: 12,
                  height: 0.8195),
            ),
          ),
        ],
      ),
    );
  }
}
