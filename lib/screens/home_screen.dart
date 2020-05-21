import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/utilities/color_constants_utils.dart';
import 'package:instagram_ui/widgets/post_widget.dart';
import 'package:instagram_ui/widgets/stories_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
            onTap: () {
              print("Camera");
            },
            child: Icon(FontAwesomeIcons.camera)),
        title: Text(
          "Instagram",
          style: TextStyle(fontFamily: 'Billabong', fontSize: 35),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                  onTap: () {
                    print("Messages");
                  },
                  child: Icon(FontAwesomeIcons.paperPlane)))
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 75.0,
                width: double.infinity,
                child: ListView(
                  padding: EdgeInsets.only(
                    top: 5.0,
                    left: 5.0,
                  ),
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    StoriesWidget(
                      startColor: Colors.grey,
                      endColor: Colors.grey,
                      text: "Your Story",
                      userImage: "assets/images/error1.jpg",
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    StoriesWidget(
                      startColor: Color(startColorConst),
                      endColor: Color(endColorConst),
                      text: "UCA",
                      userImage: "assets/images/logo.jpg",
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    StoriesWidget(
                      startColor: Color(startColorConst),
                      endColor: Color(endColorConst),
                      text: "Art",
                      userImage: "assets/images/art.jpg",
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    StoriesWidget(
                      startColor: Color(startColorConst),
                      endColor: Color(endColorConst),
                      text: "Design",
                      userImage: "assets/images/design.jpg",
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    StoriesWidget(
                      startColor: Color(startColorConst),
                      endColor: Color(endColorConst),
                      text: "SoftWare",
                      userImage: "assets/images/se.jpg",
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    StoriesWidget(
                      startColor: Color(startColorConst),
                      endColor: Color(endColorConst),
                      text: "Food",
                      userImage: "assets/images/food.jpg",
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    StoriesWidget(
                      startColor: Color(startColorConst),
                      endColor: Color(endColorConst),
                      text: "Test",
                      userImage: "assets/images/SPORTS.jpg",
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    StoriesWidget(
                      startColor: Color(startColorConst),
                      endColor: Color(endColorConst),
                      text: "Bob",
                      userImage: "assets/images/education.jpg",
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    StoriesWidget(
                      startColor: Color(startColorConst),
                      endColor: Color(endColorConst),
                      text: "Found",
                      userImage: "assets/images/notFoundScreen.jpg",
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    StoriesWidget(
                      startColor: Color(startColorConst),
                      endColor: Color(endColorConst),
                      text: "Programming",
                      userImage: "assets/images/programming.jpg",
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    StoriesWidget(
                      startColor: Color(startColorConst),
                      endColor: Color(endColorConst),
                      text: "Poltricks",
                      userImage: "assets/images/politics.jpg",
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    StoriesWidget(
                      startColor: Color(startColorConst),
                      endColor: Color(endColorConst),
                      text: "Pos",
                      userImage: "assets/images/food.jpg",
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    StoriesWidget(
                      startColor: Color(startColorConst),
                      endColor: Color(endColorConst),
                      text: "tricks",
                      userImage: "assets/images/error2.jpg",
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    StoriesWidget(
                      startColor: Color(startColorConst),
                      endColor: Color(endColorConst),
                      text: "Polts",
                      userImage: "assets/images/art.jpg",
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            thickness: 0.2,
            color: Colors.grey,
          ),
          Post(
              startColor: Color(startColorConst),
              endColor: Color(endColorConst),
              userProfileImage: "assets/images/art.jpg",
              userLocation: "New York, USA",
              totalLikes: "2200,00 likes",
              username: "Divinus",
              post: "Every man's dream is valid. Keep pushing",
              postImage: "assets/images/first_car.jpg",
              totalComments: "232,233",
              viewerProfileImage: "assets/images/Entertainment.jpg",
              postTime: "24 minutes ago"),
          SizedBox(
            height: 15.0,
          ),
          Post(
              userProfileImage: "assets/images/logo.jpg",
              userLocation: "Conway, USA",
              totalLikes: "200,00 likes",
              username: "UCA",
              post:
                  "Less is better than More. Always be positive no matter what",
              postImage: "assets/images/UCA_Sign.jpg",
              totalComments: "2,233",
              viewerProfileImage: "assets/images/Entertainment.jpg",
              postTime: "3 hours ago"),
          SizedBox(
            height: 15.0,
          ),
          Post(
              userProfileImage: "assets/images/error.jpg",
              userLocation: "New York, USA",
              totalLikes: "200 likes",
              username: "Bill",
              post:
                  "Always be positive no matter what. Less is better than More.",
              postImage: "assets/images/se.jpg",
              totalComments: "2",
              viewerProfileImage: "assets/images/Entertainment.jpg",
              postTime: "4 hours ago"),
          SizedBox(
            height: 15.0,
          ),
          Post(
              startColor: Color(startColorConst),
              endColor: Color(endColorConst),
              userProfileImage: "assets/images/design.jpg",
              userLocation: "",
              totalLikes: "2200,00 likes",
              username: "Cristaino",
              post:
                  "Less is better than More. Always be positive no matter what",
              postImage: "assets/images/education.jpg",
              totalComments: "22,23",
              viewerProfileImage: "assets/images/Entertainment.jpg",
              postTime: "54 minutes ago"),
          SizedBox(
            height: 15.0,
          ),
          Post(
              userProfileImage: "assets/images/se.jpg",
              userLocation: "",
              totalLikes: "2400,00 likes",
              username: "Programming",
              post:
                  "Less is better than More. Always be positive no matter what",
              postImage: "assets/images/programming.jpg",
              totalComments: "244,233",
              viewerProfileImage: "assets/images/Entertainment.jpg",
              postTime: "3 hours ago"),
          SizedBox(
            height: 15.0,
          ),
          Post(
              userProfileImage: "assets/images/logo.jpg",
              userLocation: "Conway, USA",
              totalLikes: "200 likes",
              username: "UCA Soccer",
              post:
                  "Less is better than More. Always be positive no matter what",
              postImage: "assets/images/TrackSoccer.jpg",
              totalComments: "34",
              viewerProfileImage: "assets/images/Entertainment.jpg",
              postTime: "15 hours ago"),
          SizedBox(
            height: 15.0,
          ),
          Post(
              userProfileImage: "assets/images/error.jpg",
              userLocation: "Manchester, UK",
              totalLikes: "200,455 likes",
              username: "Benz Family",
              post: "Less is better than More.",
              postImage: "assets/images/notFoundScreen.jpg",
              totalComments: "34,003",
              viewerProfileImage: "assets/images/Entertainment.jpg",
              postTime: "17 hours ago"),
          SizedBox(
            height: 15.0,
          ),
          Post(
              userProfileImage: "assets/images/error4.jpg",
              userLocation: "Little Rock, USA",
              totalLikes: "100,455 likes",
              username: "Benz Family",
              post: "Less is better than More.",
              postImage: "assets/images/error3.jpg",
              totalComments: "24,003",
              viewerProfileImage: "assets/images/Entertainment.jpg",
              postTime: "15 hours ago"),
          SizedBox(
            height: 15.0,
          ),
          Post(
              userProfileImage: "assets/images/error4.jpg",
              userLocation: "",
              totalLikes: "100,455 likes",
              username: "Benz Family",
              post: "Less is better than More.",
              postImage: "assets/images/error4.jpg",
              totalComments: "24,003",
              viewerProfileImage: "assets/images/Entertainment.jpg",
              postTime: "15 hours ago"),
          SizedBox(
            height: 15.0,
          ),
          Post(
              userProfileImage: "assets/images/error4.jpg",
              userLocation: "",
              totalLikes: "500,455 likes",
              username: "Jeep Family",
              post: "Less is better than More.",
              postImage: "assets/images/error.jpg",
              totalComments: "244,003",
              viewerProfileImage: "assets/images/Entertainment.jpg",
              postTime: "15 hours ago"),
          SizedBox(
            height: 15.0,
          ),
          Post(
              userProfileImage: "assets/images/error2.jpg",
              userLocation: "Texas, USA",
              totalLikes: "700,455 likes",
              username: "Rock Band",
              post: "",
              postImage: "assets/images/Entertainment.jpg",
              totalComments: "344,003",
              viewerProfileImage: "assets/images/Entertainment.jpg",
              postTime: "1 hour ago"),
          SizedBox(
            height: 15.0,
          ),
          Post(
              userProfileImage: "assets/images/error2.jpg",
              userLocation: "New York, USA",
              totalLikes: "500,455 likes",
              username: "Rock Band",
              post: "Less is better than More.",
              postImage: "assets/images/Entertainment.jpg",
              totalComments: "44,003",
              viewerProfileImage: "assets/images/Entertainment.jpg",
              postTime: "2 hours ago"),
        ],
      ),
    );
  }
}
