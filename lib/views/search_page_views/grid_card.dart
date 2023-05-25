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
      height: 186,
      width: 169,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(24)),
          color: Color(0xFF282424)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            searchImage,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            searchTtile,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            searchDescrption,
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Color(0x66FFFFFF),
                fontSize: 11,
                height: 0.8),
          )
        ],
      ),
    );
  }
}
