import 'package:flutter/material.dart';

import 'add_device_button.dart';
import 'grid_card.dart';
import 'new_device_card.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: const Color(0xFF211D1D),
          child: Padding(
            padding: EdgeInsets.only(top: 60, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Search',
                        style: Theme.of(context).textTheme.titleLarge),
                    const Text(
                      'Wifi:tw1r_413_7G',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w500,
                          color: Color(0x66F8F8F8),
                          height: 0.81),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "3 new devices",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                GridView.count(
                  padding: const EdgeInsets.only(top: 32),
                  childAspectRatio: 169 / 189.5,
                  shrinkWrap: true,
                  primary: false,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  crossAxisCount: 2,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(24)),
                          border: Border.all(
                              color: const Color(0x99FFB267),
                              width: 1,
                              style: BorderStyle.solid)),
                      child: const Gridcard(
                        searchImage: 'assets/images/bork.png',
                        searchTtile: 'Bork V530',
                        searchDescrption: 'Vacuum cleaner',
                      ),
                    ),
                    const Gridcard(
                      searchImage: 'assets/images/torch.png',
                      searchTtile: 'LIFX LED Light',
                      searchDescrption: 'Smart bulb',
                    ),
                    const Gridcard(
                      searchImage: 'assets/images/xiaomi.png',
                      searchTtile: 'Xiaomi DEM-F600',
                      searchDescrption: 'Humidifier',
                    ),
                    const NewDeviceCard()
                  ],
                ),
                const AddDeviceButton(),
              ],
            ),
          )),
    );
  }
}
