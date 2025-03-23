import 'package:flutter/material.dart';
import 'package:qianyanji/view/app_view/app_dashborard.dart';

class ViewApp extends StatefulWidget {
  const ViewApp({super.key});

  @override
  State<ViewApp> createState() => _ViewAppState();
}

class _ViewAppState extends State<ViewApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> viewList = [AppDashborard(), AppDashborard()];

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
                    icon: Icon(Icons.dashboard),
                    label: Text('图集'),
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
                  child: viewList[_selectedIndex],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
