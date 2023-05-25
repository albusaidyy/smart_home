import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IosRadioButton extends StatefulWidget {
  final bool isSelected;
  final String radioTitle;
  final Function(bool) onSelectionChanged;

  const IosRadioButton({
    required this.isSelected,
    required this.onSelectionChanged,
    Key? key,
    required this.radioTitle,
  }) : super(key: key);

  @override
  IosRadioButtonState createState() => IosRadioButtonState();
}

class IosRadioButtonState extends State<IosRadioButton> {
  late bool isSelected;
  late String radioTitle;

  @override
  void initState() {
    super.initState();
    isSelected = widget.isSelected;
    radioTitle = widget.radioTitle;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
            widget.onSelectionChanged(isSelected);
          });
        },
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              radiomTitle(),
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Container(
              alignment:
                  isSelected ? Alignment.centerRight : Alignment.centerLeft,
              width: 50,
              height: 26,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: isSelected
                    ? const Color(0xFFFFB267)
                    : const Color(0xFF393637),
              ),
              child: isSelected
                  ? const Icon(
                      CupertinoIcons.circle_filled,
                      size: 20.0,
                      color: Color(0xFF282424),
                    )
                  : const Icon(
                      CupertinoIcons.circle_filled,
                      size: 20.0,
                      color: Color(0xFFF8F8F8),
                    ),
            ),
          ],
        ));
  }

  radiomTitle() {
    if (isSelected) {
      switch (radioTitle) {
        case 'Mode 1':
          {
            radioTitle = 'Mode 2';
          }
          break;
        case 'Off':
          {
            radioTitle = 'On';
          }
          break;
      }
    } else {
      switch (radioTitle) {
        case 'Mode 2':
          {
            radioTitle = 'Mode 1';
          }
          break;
        case 'On':
          {
            radioTitle = 'Off';
          }
          break;
      }
    }
    return radioTitle;
  }
}
