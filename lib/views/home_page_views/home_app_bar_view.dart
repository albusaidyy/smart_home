import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeAppBarView extends StatelessWidget {
  const HomeAppBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //makes the status bar transparent
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 23),
          child: const ImageIcon(
            AssetImage('assets/images/bell.png'),
          ),
        ),
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const ImageIcon(
        AssetImage('assets/images/back_arrow.png'),
      ),
      title: Text('Bedroom', style: Theme.of(context).textTheme.titleMedium),
      centerTitle: true,
    );
  }
}
