import 'package:flutter/material.dart';
import 'package:flutter_provider_nav_drawer/navigation_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData.dark(),
        home: ChangeNotifierProvider<NavigationProvider>(
          builder: (_) => NavigationProvider(),
          child: MyApp(),
        ),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final nav = Provider.of<NavigationProvider>(context);
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        // wrap Column with SafeArea if UserAccountsDrawerHeader is not used
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
              accountName: Text('Naing Myo Thaw'),
              accountEmail: Text('naingmyothaw.nmyt@gmail.com'),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.of(context).pop();
                nav.changeNavigation(NavigationItem.HOME);
              },
            ),
            ListTile(
              title: Text('Add'),
              onTap: () {
                Navigator.of(context).pop();
                nav.changeNavigation(NavigationItem.ADD);
              },
            ),
            ListTile(
              title: Text('Report'),
              onTap: () {
                Navigator.of(context).pop();
                nav.changeNavigation(NavigationItem.REPORT);
              },
            ),
          ],
        ),
      ),
      body: Consumer<NavigationProvider>(
        builder: (context, navigationProvider, _) => navigationProvider.getNav,
      ),
    );
  }
}
