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
      padding: const EdgeInsets.only(top: 24),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(24)),
        child: SizedBox(
          height: 186,
          width: 169,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/wifi.png',
              ),
              const SizedBox(
                height: 19.2,
              ),
              Text(
                'Not found\n device?',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Select manually',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFB267),
                    fontSize: 12,
                    height: 0.6),
              )
            ],
          ),
        ),
      ),
    );
  }
}
