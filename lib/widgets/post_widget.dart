import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/utilities/color_constants_utils.dart';
import 'package:instagram_ui/widgets/gradient_arc_painter_widget.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.red),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 40.0,
                        height: 40.0,
                        child: CustomPaint(
                          painter: GradientArcPainter(
                            startColor: Color(startColorConst),
                            endColor: Color(endColorConst),
                            width: 1.5,
                          ),
                          child: Center(
                            child: ClipRRect(
                              child: CircleAvatar(
                                radius: 18.0,
                                backgroundImage:
                                    AssetImage('assets/images/art.jpg'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Software Software Software",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "New York,USA",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 11.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                FaIcon(CupertinoIcons.ellipsis)
              ],
            ),
          ),
          Image(
            image: AssetImage("assets/images/error1.jpg"),
            height: 270,
          )
        ],
      ),
    );
  }
}
