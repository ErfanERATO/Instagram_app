import 'package:flutter/material.dart';
import 'package:insta_app/list_of_stories.dart';

class MainPage extends StatelessWidget {
  final instaPost = Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 8.0),
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://i.pinimg.com/originals/46/9f/72/469f72de8db16eaebaf3359cb4838365.jpg"),
                    ),
                  ),
                ),
                Text(
                  "Flutter.Coder",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            )
          ],
        ),
      ),
      Row(
        children: <Widget>[
          Expanded(
            child: Image.network(
              "https://digitaldefynd.com/wp-content/uploads/2019/08/best-free-coding-courses-classes-tutorials-certification-training-online.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
                IconButton(icon: Icon(Icons.comment), onPressed: () {}),
                IconButton(icon: Icon(Icons.send), onPressed: () {}),
              ],
            ),
            IconButton(icon: Icon(Icons.bookmark_border), onPressed: () {})
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          "Rick and lacy and 50,000 others liked this post",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://www.bestof3dmodels.eu/sites/default/files/styles/basic_adaptive_ls_scale_1200/public/tguy5_render04.jpga63a5f0e-5c90-4bdd-99f2-88c6dd24d224Original.jpg?itok=J-guGY8B"),
                ),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 6.0),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Add a comment...",
                  hintStyle: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return index == 0
            ? SizedBox(
                child: ListStories(),
                height: deviceSize.height * 0.15,
              )
            : instaPost;
      },
    );
  }
}
