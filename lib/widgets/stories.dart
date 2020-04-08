import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/gradient_arc_painter.dart';

class StoriesWidget extends StatefulWidget {
  final Color startColor;
  final Color endColor;
  final String text;
  final String userImage;

  const StoriesWidget(
      {Key key,
      @required this.startColor,
      @required this.endColor,
      @required this.text,
      @required this.userImage})
      : super(key: key);

  @override
  _StoriesWidgetState createState() => _StoriesWidgetState();
}

class _StoriesWidgetState extends State<StoriesWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 50.0,
          height: 50.0,
          child: CustomPaint(
            painter: GradientArcPainter(
              startColor: widget.startColor,
              endColor: widget.endColor,
              width: 2.0,
            ),
            child: Center(
              child: ClipRRect(
                child: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage("${widget.userImage}"),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Text(
            "${widget.text}",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
