import 'package:flutter/material.dart';

class Report extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.grey,
      child: Text(
        'Report',
        style:
            Theme.of(context).textTheme.display1.copyWith(color: Colors.white),
      ),
    );
  }
}
