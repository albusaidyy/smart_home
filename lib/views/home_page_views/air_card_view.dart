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
    return Card(
      color: const Color(0xFF282424),
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF282424),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.valuePercentage,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Image.asset(widget.imageIcon),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
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
              const Divider(
                color: Color(0xFF393535),
                thickness: 1,
              ),
              IosRadioButton(
                  isSelected: isSelected,
                  radioTitle: widget.radioTitle,
                  onSelectionChanged: (value) {
                    setState(() {
                      isSelected = value;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
