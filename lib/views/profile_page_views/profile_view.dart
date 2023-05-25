import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF211D1D),
      child: Center(
        child: Text(
          'Profile Page',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
