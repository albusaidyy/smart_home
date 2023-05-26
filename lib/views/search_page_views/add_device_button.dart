import 'package:flutter/material.dart';

class AddDeviceButton extends StatelessWidget {
  const AddDeviceButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Stack(
          children: [
            Positioned(
              bottom: 90,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8),
                  width: 350,
                  height: 63,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xFFFFB267),
                  ),
                  child: Text(
                    'Add device',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
