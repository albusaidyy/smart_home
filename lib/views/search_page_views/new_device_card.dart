import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class NewDeviceCard extends StatelessWidget {
  const NewDeviceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: const Color(0xFF393535),
      dashPattern: const [4, 4],
      strokeWidth: 2,
      borderType: BorderType.RRect,
      radius: const Radius.circular(24),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(24)),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Image.asset(
                  'assets/images/wifi.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Not found',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      'device?',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 12, bottom: 27),
                child: Text(
                  'Select manually',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFB267),
                    fontSize: 12,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
