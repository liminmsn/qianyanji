import 'package:flutter/material.dart';

class ViewHome extends StatefulWidget {
  const ViewHome({super.key});

  @override
  State<ViewHome> createState() => _ViewHomeState();
}

class _ViewHomeState extends State<ViewHome> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Row(
            children: [
              NavigationRail(
                extended: constraints.maxWidth > 1000,
                indicatorColor: Theme.of(context).colorScheme.onPrimary,
                minExtendedWidth: 160,
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                destinations: [
                  NavigationRailDestination(
                    icon: Icon(Icons.home),
                    label: Text('Home'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.favorite),
                    label: Text('Favorites'),
                  ),
                ],
                selectedIndex: _selectedIndex,
                onDestinationSelected: _onItemTapped,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("hello"),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
