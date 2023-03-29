// ignore_for_file: slash_for_doc_comments

import 'package:flutter/material.dart';

void main() => runApp(const Cloud9());

//Cloud9 is a stateless widget (an empty plate/ canvas) which allows other widgets to modify it
class Cloud9 extends StatelessWidget {
  const Cloud9({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PowerTool(),
    );
  }
}

/**
 * PowerTool is the structure of the Navigation bar which is on the left side of the app
 * it is a stateful widget which fills empty spaces (statelesswidgets)
 *it is mostly responsible for giving the navigation bar various states depending on what is selected
 */
class PowerTool extends StatefulWidget {
  const PowerTool({super.key});

  @override
  State<PowerTool> createState() => _PowerToolState();
}

/**
 * The code below simply extends the functionality of the navigation bar giving it it's
 * ability to allocate lists/ branches found within the navigation bar with numbers from 0 going up
 * It allows the Navbar to highlight the selected index and set it's state, it has icons in it 
 *and other interactables
 */
class _PowerToolState extends State<PowerTool> {
  int _selectedIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.selected;
  bool showLeading = false;
  bool showTrailing = false;
  double groupAligment = -1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            selectedIndex: _selectedIndex,
            groupAlignment: groupAligment,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Icon(Icons.tag_outlined),
                selectedIcon: Icon(Icons.tag_rounded),
                label: Text('Home'),
                /*TODO I suspect that I can add a button here that allows me to switch the state of the
              application between Home, chats, explore... etc*/
              ),
              NavigationRailDestination(
                icon: Icon(Icons.mark_chat_unread_outlined),
                selectedIcon: Icon(Icons.mark_chat_read),
                label: Text('Chats'),
                /*TODO I suspect that I can add a button here that allows me to switch the state of the
              application between Home, chats, explore... etc*/
              ),
              NavigationRailDestination(
                icon: Icon(Icons.shopping_bag_outlined),
                selectedIcon: Icon(Icons.shopping_bag_rounded),
                label: Text('Shop'),
                /*TODO I suspect that I can add a button here that allows me to switch the state of the
              application between Home, chats, explore... etc*/
              ),
              NavigationRailDestination(
                icon: Icon(Icons.star_border_outlined),
                selectedIcon: Icon(Icons.stars_rounded),
                label: Text('Saved'),
                /*TODO I suspect that I can add a button here that allows me to switch the state of the
              application between Home, chats, explore... etc*/
              ),
              NavigationRailDestination(
                icon: Icon(Icons.travel_explore_outlined),
                selectedIcon: Icon(Icons.travel_explore_rounded),
                label: Text('Explore'),
                /*TODO I suspect that I can add a button here that allows me to switch the state of the
              application between Home, chats, explore... etc*/
              ),
              // Cant put content here
              NavigationRailDestination(
                icon: Icon(Icons.account_circle_outlined),
                //Cant put content here
                selectedIcon: Icon(Icons.account_circle_rounded),
                label: Text('Settings'),
              ),
            ],
          ),
          const VerticalDivider(thickness: 3, width: 3),
          // This is the main screen content.

          /*TODO the structure code below is the reason why I cant change the contents of the main 'welcome screen', 
           fix that*/
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Welcome to Citynest revamp!'),
                //TODO Add a login/ registration form
              ],
            ),
          ),
        ],
      ),
    );
  }
}
