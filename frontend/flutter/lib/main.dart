import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:solfeggio/ui/ui.dart';
import 'package:solfeggio/features/home/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Сольфеджио',
      theme: themeData,
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomeDesktopFeature(
            controller: SidebarXController(selectedIndex: 0, extended: false)),
        '/schedule': (BuildContext context) => HomeDesktopFeature(
            controller: SidebarXController(selectedIndex: 1, extended: false)),
        '/hometasks': (BuildContext context) => HomeDesktopFeature(
            controller: SidebarXController(selectedIndex: 2, extended: false)),
        '/performance': (BuildContext context) => HomeDesktopFeature(
            controller: SidebarXController(selectedIndex: 3, extended: false)),
        '/chats': (BuildContext context) => HomeDesktopFeature(
            controller: SidebarXController(selectedIndex: 4, extended: false)),
        '/Profile': (BuildContext context) => HomeDesktopFeature(
            controller: SidebarXController(selectedIndex: 5, extended: false)),
      },
    );
  }
}

// MaterialApp(
//     home: const MyAppHome(), // becomes the route named '/'
//     routes: <String, WidgetBuilder> {
//       '/a': (BuildContext context) => const MyPage(title: Text('page A')),
//       '/b': (BuildContext context) => const MyPage(title: Text('page B')),
//       '/c': (BuildContext context) => const MyPage(title: Text('page C')),
//     },