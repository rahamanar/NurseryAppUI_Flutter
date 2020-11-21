import 'package:flutter/material.dart';

class ImageScroll extends StatelessWidget {
  const ImageScroll({
    Key key,
    @required List<String> plantimgs,
  })  : _plantimgs = plantimgs,
        super(key: key);

  final List<String> _plantimgs;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _plantimgs.length,
        itemBuilder: (context, index) => Card(
          margin: EdgeInsets.all(6),
          child: Image.network(
            _plantimgs[index],
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
