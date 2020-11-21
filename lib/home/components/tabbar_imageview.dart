import 'package:flutter/material.dart';
import 'package:nursery_app_ui/ImageDetails/image_details.dart';

// ignore: camel_case_types
class Tabbar_imageview extends StatelessWidget {
  const Tabbar_imageview({
    Key key,
    @required this.controller,
  }) : super(key: key);

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: RotatedBox(
                quarterTurns: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.06),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorPadding: EdgeInsets.symmetric(
                      horizontal: 14,
                    ),
                    labelColor: Colors.green,
                    labelPadding: EdgeInsets.all(11),
                    indicatorWeight: 6,
                    controller: controller,
                    labelStyle: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Text(
                        "Indoor",
                      ),
                      Text(
                        "Outdoor",
                      ),
                      Text(
                        "Toppick",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Flexible(
            flex: 2,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageDetails(),
                      ),
                    ),
                    child: Container(
                      child: Hero(
                        tag: "tag1",
                        child: Image.asset(
                          "assets/images/kari-shea.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Text(
                    "toa-heftiba ",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
