import 'package:flutter/material.dart';
import './air_card_view.dart';

class AirRowView extends StatelessWidget {
  const AirRowView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        const Expanded(
          flex: 1,
          child: AirCardView(
            valuePercentage: '36%',
            imageIcon: 'assets/images/humidity.png',
            radioTitle: 'Mode 2',
            valueTitle: 'Humidifier',
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          flex: 1,
          child: AirCardView(
            key: key,
            valuePercentage: '73%',
            imageIcon: 'assets/images/clean.png',
            radioTitle: 'On',
            valueTitle: 'purifier',
          ),
        ),
      ],
    );
  }
}
