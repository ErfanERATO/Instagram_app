import 'package:flutter/material.dart';

class ListStories extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        "Stories",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Row(
        children: <Widget>[
          Text(
            "Watch all",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Icon(Icons.play_arrow),
        ],
      ),
    ],
  );

  final stories = Expanded(
      child: Padding(
    padding: const EdgeInsets.only(top: 10.0),
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Stack(
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
              index == 0
                  ? Positioned(
                      right: 3.0,
                      bottom: 5.0,
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 10.0,
                        child: Icon(
                          Icons.add,
                          size: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Container(),
            ],
          );
        }),
  ));

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[topText, stories],
      ),
    );
  }
}
