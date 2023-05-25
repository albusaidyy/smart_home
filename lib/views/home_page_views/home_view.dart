import 'package:flutter/material.dart';

import 'air_row_view.dart';
import 'home_app_bar_view.dart';
import 'home_slider_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(104),
        child: HomeAppBarView(),
      ),
      body: Container(
        color: const Color(0xFF211D1D),
        child: SizedBox(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/images/bed.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 473,
                ),
              ),
              const Positioned(
                top: 394,
                left: 20,
                right: 20,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 198,
                      child: AirRowView(),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    HomeSliderCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
