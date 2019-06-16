import 'package:flutter/material.dart';

class Add extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.green,
      child: Text(
        'Add',
        style:
            Theme.of(context).textTheme.display1.copyWith(color: Colors.white),
      ),
    );
  }
}
