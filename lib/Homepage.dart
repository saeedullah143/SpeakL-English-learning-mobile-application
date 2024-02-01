import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'ChatBot/ChatScreen.dart';
import 'ProfilePage.dart';
import 'LexiconPage.dart';
import 'SelectTypeLesson.dart';

final _firestore=FirebaseFirestore.instance;
late User loggedUser;

class HomePage extends StatefulWidget {
  static const String id= 'Homepage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0; // Make currentIndex public
  final _auth=FirebaseAuth.instance;

  @override
  void initState() {
    getCurrentUser();
    super.initState();
  }

  void getCurrentUser(){
    final user=_auth.currentUser;
    if(user != null){
      loggedUser = user;
    }
  }



  int getCurrentIndex() {
    return currentIndex; // Getter method to access currentIndex
  }

  final _inactiveColor = Colors.black54;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: getBody(),
        bottomNavigationBar: _buildBottomBar()
    );
  }

  Widget _buildBottomBar(){
    return CustomAnimatedBottomBar(
        containerHeight: 70,
        backgroundColor: Colors.teal,
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.white,
            inactiveColor: _inactiveColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text('Chatbot'),
            activeColor: Colors.white,
            inactiveColor: _inactiveColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.book),
            title: Text('Lexicon'),
            activeColor: Colors.white,
            inactiveColor: _inactiveColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile'),
            activeColor: Colors.white,
            inactiveColor: _inactiveColor,
            textAlign: TextAlign.center,
          ),
        ]
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      LessonsTypesPage(),
      ChatBotScreen(),
      LexiconPage(),
      ProfilePage()
    ];
    return IndexedStack(
      index: currentIndex,
      children: pages,
    );
  }

}
class CustomAnimatedBottomBar extends StatelessWidget {

  const CustomAnimatedBottomBar({
    Key? key,
    this.selectedIndex = 0,
    this.showElevation = true,
    this.iconSize = 24,
    this.backgroundColor,
    this.itemCornerRadius = 50,
    this.containerHeight = 56,
    this.animationDuration = const Duration(milliseconds: 270),
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    required this.items,
    required this.onItemSelected,
    this.curve = Curves.linear,
  }) : assert(items.length >= 2 && items.length <= 5),
        super(key: key);

  final int selectedIndex;
  final double iconSize;
  final Color? backgroundColor;
  final bool showElevation;
  final Duration animationDuration;
  final List<BottomNavyBarItem> items;
  final ValueChanged<int> onItemSelected;
  final MainAxisAlignment mainAxisAlignment;
  final double itemCornerRadius;
  final double containerHeight;
  final Curve curve;

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Colors.indigo,
              Colors.teal
            ]
        ),
        boxShadow: [
          if (showElevation)
            const BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
            ),
        ],
      ),
      child: SafeArea(
        child: Container(
          width: double.infinity,
          height: containerHeight,
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          child: Row(
            mainAxisAlignment: mainAxisAlignment,
            children: items.map((item) {
              var index = items.indexOf(item);
              return GestureDetector(
                onTap: () => onItemSelected(index),
                child: _ItemWidget(
                  item: item,
                  iconSize: iconSize,
                  isSelected: index == selectedIndex,
                  itemCornerRadius: itemCornerRadius,
                  animationDuration: animationDuration,
                  curve: curve,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget {
  final double iconSize;
  final bool isSelected;
  final BottomNavyBarItem item;
  final Color? backgroundColor;
  final double itemCornerRadius;
  final Duration animationDuration;
  final Curve curve;

  const _ItemWidget({
    Key? key,
    required this.item,
    required this.isSelected,
    this.backgroundColor,
    required this.animationDuration,
    required this.itemCornerRadius,
    required this.iconSize,
    this.curve = Curves.linear,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      selected: isSelected,
      child: AnimatedContainer(
        width: isSelected ? 130 : 50,
        height: double.maxFinite,
        duration: animationDuration,
        curve: curve,
        decoration: BoxDecoration(
          color:
          isSelected ? item.activeColor.withOpacity(0.2) : backgroundColor,
          borderRadius: BorderRadius.circular(itemCornerRadius),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            width: isSelected ? 130 : 50,
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconTheme(
                  data: IconThemeData(
                    size: iconSize,
                    color: isSelected
                        ? item.activeColor.withOpacity(1)
                        : item.inactiveColor == null
                        ? item.activeColor
                        : item.inactiveColor,
                  ),
                  child: item.icon,
                ),
                if (isSelected)
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: DefaultTextStyle.merge(
                        style: TextStyle(
                          color: item.activeColor,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        textAlign: item.textAlign,
                        child: item.title,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class BottomNavyBarItem {

  BottomNavyBarItem({
    required this.icon,
    required this.title,
    this.activeColor = Colors.blue,
    this.textAlign,
    this.inactiveColor,
  });

  final Widget icon;
  final Widget title;
  final Color activeColor;
  final Color? inactiveColor;
  final TextAlign? textAlign;
}