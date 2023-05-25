import 'package:flutter/material.dart';

class GridPageView extends StatelessWidget {
  const GridPageView({super.key});

  static const routeName = '/grid-pageView';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF211D1D),
      child: Center(
        child: Text(
          'Grid Page',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
