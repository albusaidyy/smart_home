import 'package:flutter/material.dart';
import './ios_radio_widget.dart';

class AirCardView extends StatefulWidget {
  final String valuePercentage;
  final String imageIcon;
  final String valueTitle;

  final String radioTitle;
  const AirCardView({
    super.key,
    required this.valuePercentage,
    required this.imageIcon,
    required this.valueTitle,
    required this.radioTitle,
  });

  @override
  State<AirCardView> createState() => _AirCardViewState();
}

class _AirCardViewState extends State<AirCardView> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 20, 20, 20),
      decoration: BoxDecoration(
        color: const Color(0xFF282424),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.valuePercentage,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 41.91),
                child: Image.asset(
                  widget.imageIcon,
                  color: const Color(0xFFF8F8F8),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.valueTitle,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  'Air',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 32.0),
            child: Divider(
              height: 0,
              color: Color(0xFF393535),
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: IosRadioButton(
                isSelected: isSelected,
                radioTitle: widget.radioTitle,
                onSelectionChanged: (value) {
                  setState(() {
                    isSelected = value;
                  });
                }),
          ),
        ],
      ),
    );
  }
}
