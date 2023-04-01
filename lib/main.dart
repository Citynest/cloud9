import 'package:cloud9/App.dart';
import 'package:flutter/material.dart';

void main() => runApp(Cloud9());

class Cloud9 extends StatelessWidget {
  Cloud9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PowerTool(),
    );
  }
}

class PowerTool extends StatefulWidget {
  const PowerTool({Key? key}) : super(key: key);

  @override
  State<PowerTool> createState() => _PowerToolState();
}

class _PowerToolState extends State<PowerTool> {
  int _selectedIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
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
                label: Text('Testing room'),
                icon: Icon(Icons.water_drop_outlined),
                selectedIcon: Icon(Icons.bolt_rounded),
              ),
              NavigationRailDestination(
                label: Text('Chats'),
                icon: Icon(Icons.mark_chat_unread_outlined),
                selectedIcon: Icon(Icons.mark_chat_read),
              ),
              NavigationRailDestination(
                label: Text('Shop'),
                icon: Icon(Icons.shopping_bag_outlined),
                selectedIcon: Icon(Icons.shopping_bag_rounded),
              ),
              NavigationRailDestination(
                label: Text('Saved'),
                icon: Icon(Icons.star_border_outlined),
                selectedIcon: Icon(Icons.stars_rounded),
              ),
              NavigationRailDestination(
                label: Text('Explore'),
                icon: Icon(Icons.travel_explore_outlined),
                selectedIcon: Icon(Icons.travel_explore_rounded),
              ),
              NavigationRailDestination(
                label: Text('Settings'),
                icon: Icon(Icons.account_circle_outlined),
                selectedIcon: Icon(Icons.account_circle_rounded),
              ),
              NavigationRailDestination(
                label: Text('Home'),
                icon: Icon(Icons.tag_outlined),
                selectedIcon: Icon(Icons.tag_rounded),
              ),
            ],
          ),
          const VerticalDivider(thickness: 3, width: 3),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Welcome to Citynest revamp!'),
                ElevatedButton(
                  onPressed: () {
                    //TODO: Add code for opening login/registration form

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => App()),
                        ));
                  },
                  child: Text('Login/Register'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
