import 'package:flutter/material.dart';

class Pricetaglist extends StatelessWidget {
  const Pricetaglist({
    Key key,
    this.category,
    this.value,
  }) : super(key: key);

  final String category, value;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "$category\n",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          TextSpan(
            text: value,
            style: TextStyle(
                color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
