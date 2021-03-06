import 'package:flutter/material.dart';

class DataInfoVerticalWidget extends StatelessWidget {
  String title;
  String image;
  String titleHeader;
  Color appColor;
  DataInfoVerticalWidget(
      String titleHeader, String title, String image, Color appColor) {
    this.title = title;
    this.image = image;
    this.titleHeader = titleHeader;
    this.appColor = appColor;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
        //backgroundColor: Colors.blueGrey[900],
        child: Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        ClipPath(
          clipper: ShapeBorderClipper(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40))),
          child: Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width / 8,
            decoration: BoxDecoration(
              //color: Colors.transparent,
              border: Border(
                right: BorderSide(
                  color: appColor,
                  width: 2,
                ),
                left: BorderSide(
                  color: appColor,
                  width: 2,
                ),
                bottom: BorderSide(
                  color: appColor,
                  width: 2,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    titleHeader,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height / 30,
                        color: Colors.grey[500]),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height / 40,
                        color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: -MediaQuery.of(context).size.height / 15,
            child: CircleAvatar(
                backgroundColor: Colors.redAccent,
                radius: MediaQuery.of(context).size.height / 17,
                child: Image.network(
                  image,
                  fit: BoxFit.fill,
                ))),
      ],
    ));
  }
}
