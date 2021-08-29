
import 'package:flutter/material.dart';

class NavigationBarWeb extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: const [
          Text('Home', style: TextStyle(fontSize: 20.0)),
          SizedBox(width: 100.0),
          Text(
            'About',
            style: TextStyle(fontSize: 20.0),
          ),
          SizedBox(width: 100.0),
          Text(
            'Contact',
            style: TextStyle(fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}
