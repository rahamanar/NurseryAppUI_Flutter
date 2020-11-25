import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:nursery_app_ui/home/components/imageScroll.dart';
import 'package:nursery_app_ui/home/components/pricetaglist.dart';
import 'package:nursery_app_ui/home/components/tabbar_imageview.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;
  int activeTabIndex = 2;

  List<String> _plantimgs = [
    "https://i.ibb.co/R6yNzF9/alvan-nee.jpg",
    "https://i.ibb.co/vYFqHCX/freddie-marriage.jpg",
    "https://i.ibb.co/yXzsvhJ/galina.jpg",
    "https://i.ibb.co/zJhgLsP/kara-eads.jpg",
    "https://i.ibb.co/RPHRfM6/kari-shea.jpg",
    "https://i.ibb.co/hHLQ8K1/nikolai-chernichenko.jpg",
    "https://i.ibb.co/m8HLz9D/toa-heftiba.jpg"
  ];

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 3,
      initialIndex: 2,
      vsync: this,
    );
    controller.addListener(() {
      setState(() {
        activeTabIndex = controller.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: true,
        body: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.clear_all,
                        color: Colors.black,
                      ),
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Plants",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Tabbar_imageview(controller: controller),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 55,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          color: Colors.green,
                        ),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                      Pricetaglist(
                        category: "Price",
                        value: "\$50",
                      ),
                      Pricetaglist(
                        category: "Size",
                        value: "Small",
                      ),
                      Pricetaglist(
                        category: "Plant",
                        value: "Lily",
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Suggested",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(fontSize: 12, color: Colors.black26),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ImageScroll(plantimgs: _plantimgs),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
