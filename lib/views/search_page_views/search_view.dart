import 'package:flutter/material.dart';

import 'add_device_button.dart';
import 'grid_card.dart';
import 'new_device_card.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Container(
          color: const Color(0xFF211D1D),
          child: Padding(
            padding: EdgeInsets.only(top: 60 - topPadding, left: 20, right: 20),
            child: Column(
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
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "3 new devices",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                GridView.count(
                  shrinkWrap: true,
                  primary: false,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  crossAxisCount: 2,
                  children: [
                    Container(
                      height: 186,
                      width: 169,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(24)),
                          border: Border.all(
                              color: const Color(0x99FFB267),
                              width: 1,
                              style: BorderStyle.solid)),
                      child: const Gridcard(
                        searchImage: 'assets/images/bork.png',
                        searchTtile: 'Vacuum cleaner',
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
          )
          //
          //
          // Stack(
          //   children: [
          //     Positioned(
          //       top: 112,
          //       child: Text(
          //         "3 new devices",
          //         style: Theme.of(context).textTheme.bodyMedium,
          //       ),
          //     ),
          //     const SizedBox(
          //       height: 32,
          //     ),
          //     Positioned(
          //       child: GridView.count(
          //         primary: false,
          //         crossAxisSpacing: 12,
          //         mainAxisSpacing: 12,
          //         crossAxisCount: 2,
          //         children: [
          //           Container(
          //             height: 186,
          //             width: 169,
          //             decoration: BoxDecoration(
          //                 borderRadius:
          //                     const BorderRadius.all(Radius.circular(24)),
          //                 border: Border.all(
          //                     color: const Color(0x99FFB267),
          //                     width: 1,
          //                     style: BorderStyle.solid)),
          //             child: const Gridcard(
          //               searchImage: 'assets/images/bork.png',
          //               searchTtile: 'Vacuum cleaner',
          //               searchDescrption: 'Vacuum cleaner',
          //             ),
          //           ),
          //           const Gridcard(
          //             searchImage: 'assets/images/bork.png',
          //             searchTtile: 'Vacuum cleaner',
          //             searchDescrption: 'Vacuum cleaner',
          //           ),
          //         ],
          //       ),
          //     ),
          //     Positioned(
          //       bottom: bottomPadding + 5,
          //       left: 20.0,
          //       right: 20.0,
          //       child: GestureDetector(
          //         onTap: () {},
          //         child: Container(
          //           alignment: Alignment.center,
          //           padding: const EdgeInsets.all(8),
          //           width: 350,
          //           height: 63,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(16),
          //             color: const Color(0xFFFFB267),
          //           ),
          //           child: Text(
          //             'Add device',
          //             style: Theme.of(context).textTheme.labelLarge,
          //           ),
          //         ),
          //       ),
          //     )
          //   ],
          // ),
          ),
    );
  }
}
