import 'package:flutter/material.dart';
import 'package:insta_app/pages/like_page.dart';
import 'package:insta_app/pages/main_page.dart';
import 'package:insta_app/pages/plus_page.dart';
import 'package:insta_app/pages/profile_page.dart';
import 'package:insta_app/pages/search_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String currentPageName = "main";

  final Map <String, Widget> children = <String, Widget>{
   "Main" : MainPage(),
   "Search" : SearchPage(),
   "Plus" : PlusPage(),
   "Profile" : ProfilePage(),
   "Like" : LikePage(),
  };

  final appBar = AppBar(
    backgroundColor: Color(0xffffffff),
    elevation: 1.0,
    leading: Icon(Icons.camera_alt_rounded),
    title: SizedBox(
      height: 35.0,
      child: Image.asset("assets/image/insta_logo.png"),
    ),
    centerTitle: true,
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 8),
        child: Icon(Icons.send),
      )
    ],
  );

  changePage(String namePage){
    setState(() {
      currentPageName = namePage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[currentPageName],
      appBar: appBar,
      bottomNavigationBar: Container(
        height: 40.0,
        alignment: Alignment.center,
        color: Colors.white,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(icon: Icon(Icons.home), onPressed: () {changePage("Main");}),
              IconButton(icon: Icon(Icons.search), onPressed: () {changePage("Search");}),
              IconButton(icon: Icon(Icons.add_box), onPressed: () {changePage("Plus");}),
              IconButton(icon: Icon(Icons.favorite), onPressed: () {changePage("Like");}),
              IconButton(icon: Icon(Icons.account_box), onPressed: () {changePage("Profile");}),
            ],
          ),
        ),
      ),
    );
  }
}

//new_form_of_Code______________________________________________________________________________________________________________________________________________
// class _MyHomePageState extends State<MyHomePage> {
//   int currentPageIndex = 0;

//   final List children = [
//      MainPage(),
//      SearchPage(),
//      PlusPage(),
//      ProfilePage(),
//      LikePage(),
//   ];

//   final appBar = AppBar(
//     backgroundColor: Color(0xffffffff),
//     elevation: 1.0,
//     leading: Icon(Icons.camera_alt_rounded),
//     title: SizedBox(
//       height: 35.0,
//       child: Image.asset("assets/image/insta_logo.png"),
//     ),
//     centerTitle: true,
//     actions: <Widget>[
//       Padding(
//         padding: EdgeInsets.only(right: 8),
//         child: Icon(Icons.send),
//       )
//     ],
//   );

//   changePage(int indexPage) {
//     setState(() {
//       currentPageIndex = indexPage;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: children[currentPageIndex],
//       appBar: appBar,
//       bottomNavigationBar: BottomNavigationBar(
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             // ignore: deprecated_member_use
//             icon: Icon(Icons.home,color: Colors.black,),title: Text("Home",style: TextStyle(color:Colors.black),),
//           ),
//                     BottomNavigationBarItem(
//             // ignore: deprecated_member_use
//             icon: Icon(Icons.search,color: Colors.black,),title: Text("Search",style: TextStyle(color:Colors.black),),
//           ),
//                     BottomNavigationBarItem(
//             // ignore: deprecated_member_use
//             icon: Icon(Icons.add_box,color: Colors.black,),title: Text("New post",style: TextStyle(color:Colors.black),),
//           ),
//                     BottomNavigationBarItem(
//             // ignore: deprecated_member_use
//             icon: Icon(Icons.favorite,color: Colors.black,),title: Text("Like",style: TextStyle(color:Colors.black),),
//           ),
//                     BottomNavigationBarItem(
//             // ignore: deprecated_member_use
//             icon: Icon(Icons.account_box,color: Colors.black,),title: Text("Profile",style: TextStyle(color:Colors.black),),
//           ),
//         ],
//         onTap: changePage,
//         currentIndex: currentPageIndex,
//       ),
//     );
//   }
// }
