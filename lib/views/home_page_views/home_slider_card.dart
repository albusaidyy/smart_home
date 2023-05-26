import 'package:flutter/material.dart';

class HomeSliderCard extends StatelessWidget {
  const HomeSliderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF282424),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xFF282424),
          borderRadius: BorderRadius.circular(24),
        ),
        child: const SliderColumn(),
      ),
    );
  }
}

class SliderColumn extends StatefulWidget {
  const SliderColumn({super.key});

  @override
  State<SliderColumn> createState() => _SliderColumnState();
}

class _SliderColumnState extends State<SliderColumn> {
  double _value1 = 0.685;
  double _value2 = 0.433;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 30, left: 20, right: 20),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Main light',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Row(
                children: [
                  Expanded(
                    // color: Colors.blue,
                    child: SliderTheme(
                      data: SliderThemeData(
                        overlayShape: SliderComponentShape.noOverlay,
                        activeTrackColor: const Color(0xFFFFB367),
                        inactiveTrackColor: const Color(0x336B6869),
                        trackShape: CustomTrackShape(),
                        thumbColor: const Color(0xFFFFB367),
                        thumbShape: CircleThumbShape(),
                      ),
                      child: Slider(
                        value: _value1,
                        onChanged: (double value) {
                          setState(() {
                            _value1 = value;
                          });
                        },
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 19.22),
                    child: Image(
                      image: AssetImage('assets/images/lamp.png'),
                      color: Color(0xFFF8F8F8),
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 8.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Floor lamp',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Row(
                children: [
                  Expanded(
                    child: SliderTheme(
                      data: SliderThemeData(
                        overlayShape: SliderComponentShape.noOverlay,
                        activeTrackColor: const Color(0xFFFFB367),
                        inactiveTrackColor: const Color(0x336B6869),
                        trackShape: CustomTrackShape(),
                        thumbColor: const Color(0xFFFFB367),
                        thumbShape: CircleThumbShape(),
                      ),
                      child: Slider(
                        value: _value2,
                        onChanged: (double value) {
                          setState(() {
                            _value2 = value;
                          });
                        },
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 19.22),
                    child: Image(
                      image: AssetImage('assets/images/table_lamp.png'),
                      color: Color(0xFFF8F8F8),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double? trackHeight = sliderTheme.trackHeight;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}

class CircleThumbShape extends SliderComponentShape {
  final double thumbRadius = 15.5;
  final double thumbRadius2 = 7.5;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
      required Animation<double> enableAnimation,
      required bool isDiscrete,
      required TextPainter labelPainter,
      required RenderBox parentBox,
      required SliderThemeData sliderTheme,
      required TextDirection textDirection,
      required double value,
      required double textScaleFactor,
      required Size sizeWithOverflow}) {
    final Canvas canvas = context.canvas;

    final fillPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final borderPaint = Paint()
      ..color = const Color(0xFF504538)
      ..strokeWidth = 8
      ..style = PaintingStyle.fill;
    canvas.drawCircle(center, thumbRadius, borderPaint);
    canvas.drawCircle(center, thumbRadius2, fillPaint);
  }
}
