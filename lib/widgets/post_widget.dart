import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/widgets/gradient_arc_painter_widget.dart';

class Post extends StatefulWidget {
  final Color startColor;
  final Color endColor;
  final String userProfileImage;
  final String userLocation;
  final String totalLikes;
  final String username;
  final String post;
  final String postImage;
  final String totalComments;
  final String postTime;
  final String viewerProfileImage;

  const Post(
      {this.startColor,
      this.endColor,
      @required this.userProfileImage,
      this.userLocation,
      @required this.totalLikes,
      @required this.username,
      @required this.post,
      @required this.postImage,
      @required this.totalComments,
      @required this.viewerProfileImage,
      @required this.postTime});

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450.0,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      widget.startColor != null
                          ? Container(
                              width: 40.0,
                              height: 40.0,
                              child: CustomPaint(
                                painter: GradientArcPainter(
                                  startColor: widget.startColor,
                                  endColor: widget.endColor,
                                  width: 1.5,
                                ),
                                child: Center(
                                  child: ClipRRect(
                                    child: CircleAvatar(
                                      radius: 18.0,
                                      backgroundImage: AssetImage(
                                          "${widget.userProfileImage}"),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Center(
                              child: ClipRRect(
                                child: CircleAvatar(
                                  radius: 18.0,
                                  backgroundImage:
                                      AssetImage("${widget.userProfileImage}"),
                                ),
                              ),
                            ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "${widget.username}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "${widget.userLocation}",
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
          Container(
            width: double.infinity,
            height: 250.0,
            decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("${widget.postImage}"),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FaIcon(Icons.favorite_border),
                    SizedBox(
                      width: 10.0,
                    ),
                    FaIcon(FontAwesomeIcons.comment),
                    SizedBox(
                      width: 10.0,
                    ),
                    FaIcon(FontAwesomeIcons.paperPlane)
                  ],
                ),
                FaIcon(FontAwesomeIcons.bookmark)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 5.0),
            child: Text("${widget.totalLikes}",
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 5.0),
            child: Row(
              children: <Widget>[
                Text(
                  "${widget.username}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 3.0,
                ),
                Expanded(
                    child: Text(
                  "${widget.post}",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 5.0),
            child: Text(
              "View all ${widget.totalComments} comments",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 12.0,
                      backgroundImage:
                          AssetImage("${widget.viewerProfileImage}"),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "Add a comment...",
                      style: TextStyle(fontSize: 12.0, color: Colors.grey),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("😂", style: TextStyle(fontSize: 14.0)),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text("🙏", style: TextStyle(fontSize: 14.0)),
                    SizedBox(
                      width: 10.0,
                    ),
                    FaIcon(
                      CupertinoIcons.plus_circled,
                      size: 14.0,
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 5.0),
            child: Text(
              "${widget.postTime}",
              style: TextStyle(fontSize: 11.0, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
