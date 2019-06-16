import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_provider_nav_drawer/add.dart';
import 'package:flutter_provider_nav_drawer/home.dart';
import 'package:flutter_provider_nav_drawer/report.dart';

class NavigationProvider with ChangeNotifier {
  NavigationItem currentNav = NavigationItem.HOME;

  Widget get getNav {
    switch (currentNav) {
      case NavigationItem.ADD:
        return Add();
      case NavigationItem.REPORT:
        return Report();
      default:
        return Home();
    }
  }

  void changeNavigation(NavigationItem newNav) {
    currentNav = newNav;
    notifyListeners();
  }
}

enum NavigationItem { HOME, ADD, REPORT }
