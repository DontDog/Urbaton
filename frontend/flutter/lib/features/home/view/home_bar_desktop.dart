import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:solfeggio/features/home/view/home_screen_desktop.dart';
import 'package:solfeggio/ui/ui.dart';

import 'calendar_screen_desctop.dart';

class HomeDesktopFeature extends StatelessWidget {
  final SidebarXController
      controller; // = SidebarXController(selectedIndex: 0, extended: false);
  HomeDesktopFeature({Key? key, required this.controller}) : super(key: key);
  //int page;

  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      final isSmallScreen = MediaQuery.of(context).size.width < 600;
      return Scaffold(
        key: _key,
        appBar: isSmallScreen
            ? AppBar(
                backgroundColor: canvasColor,
                title: Text(_getTitleByIndex(controller.selectedIndex)),
                leading: IconButton(
                  onPressed: () {
                    // if (!Platform.isAndroid && !Platform.isIOS) {
                    //   _controller.setExtended(true);
                    // }
                    _key.currentState?.openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              )
            : null,
        drawer: ExampleSidebarX(controller: controller),
        body: Row(
          children: [
            if (!isSmallScreen) ExampleSidebarX(controller: controller),
            Expanded(
              child: Center(
                child: _ScreensExample(
                  controller: controller,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

class ExampleSidebarX extends StatelessWidget {
  const ExampleSidebarX({
    Key? key,
    required SidebarXController controller,
  })  : _controller = controller,
        super(key: key);

  final SidebarXController _controller;

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _controller,
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: canvasColor,
          borderRadius: BorderRadius.circular(20),
        ),
        hoverColor: scaffoldBackgroundColor,
        textStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
        selectedTextStyle: const TextStyle(color: Colors.white),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: canvasColor),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: actionColor.withOpacity(0.37),
          ),
          gradient: const LinearGradient(
            colors: [accentCanvasColor, canvasColor],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 30,
            )
          ],
        ),
        iconTheme: IconThemeData(
          color: Colors.white.withOpacity(0.7),
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
          size: 20,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        width: 200,
        decoration: BoxDecoration(
          color: canvasColor,
        ),
      ),
      footerDivider: divider,
      items: [
        SidebarXItem(
          iconWidget: SvgPicture.asset(
            "assets/icons/1.svg",
            width: 20,
            height: 20,
            color: textDarkColor,
          ),
          label: 'Главная',
          onTap: () {
            final pageTitle = _getTitleByIndex(0);
            Navigator.pushNamed(context, pageTitle);
          },
        ),
        SidebarXItem(
          iconWidget: SvgPicture.asset(
            "assets/icons/2.svg",
            width: 20,
            height: 20,
            color: textDarkColor,
          ),
          onTap: () {
            final pageTitle = _getTitleByIndex(1);
            Navigator.pushNamed(context, pageTitle);
          },
          label: 'Расписание',
        ),
        SidebarXItem(
          iconWidget: SvgPicture.asset(
            "assets/icons/3.svg",
            width: 20,
            height: 20,
            color: textDarkColor,
          ),
          onTap: () {
            final pageTitle = _getTitleByIndex(2);
            Navigator.pushNamed(context, pageTitle);
          },
          label: 'Домашние\n  задания',
        ),
        SidebarXItem(
          iconWidget: SvgPicture.asset(
            "assets/icons/4.svg",
            width: 20,
            height: 20,
            color: textDarkColor,
          ),
          onTap: () {
            final pageTitle = _getTitleByIndex(3);
            Navigator.pushNamed(context, pageTitle);
          },
          label: 'Успеваемость',
        ),
        SidebarXItem(
          // iconWidget: Icon(Icons.chat_bubble_outline,
          //     color: textDarkColor, size: 20),
          iconWidget: SvgPicture.asset(
            "assets/icons/5.svg",
            width: 20,
            height: 20,
            color: textDarkColor,
          ),
          onTap: () {
            final pageTitle = _getTitleByIndex(4);
            Navigator.pushNamed(context, pageTitle);
          },
          label: 'Чаты',
        ),
        SidebarXItem(
          // iconWidget: Icon(
          //   Icons.account_circle_outlined,
          //   color: textDarkColor,
          //   size: 23,
          // ),
          onTap: () {
            final pageTitle = _getTitleByIndex(5);
            Navigator.pushNamed(context, pageTitle);
          },
          iconWidget: SvgPicture.asset(
            "assets/icons/6.svg",
            width: 20,
            height: 20,
            color: textDarkColor,
          ),
          label: 'Профиль',
        ),
      ],
    );
  }
}

class _ScreensExample extends StatelessWidget {
  const _ScreensExample({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        switch (controller.selectedIndex) {
          case 0:
            return const DesktopHomeScreen();
          case 1:
            return const DesktopCalendarScreen();
          default:
            return Text(
              "привет",
              style: theme.textTheme.headlineSmall,
            );
        }
      },
    );
  }
}

String _getTitleByIndex(int index) {
  switch (index) {
    case 0:
      return '/';
    case 1:
      return '/schedule';
    case 2:
      return '/hometasks';
    case 3:
      return '/performance';
    case 4:
      return '/chats';
    case 5:
      return '/Profile';
    default:
      return '/';
  }
}

// const primaryColor = Color(0xFF685BFF);
// const canvasColor = Color(0xFF2E2E48);
// const scaffoldBackgroundColor = Color(0xFF464667);
// const accentCanvasColor = Color(0xFF3E3E61);
// const white = Colors.white;
// final actionColor = const Color(0xFF5F5FA7).withOpacity(0.6);
// final divider = Divider(color: white.withOpacity(0.3), height: 1);

const primaryColor = Color(0xFF1F3F69);
const canvasColor = Color(0xFF252436);
const scaffoldBackgroundColor = Color(0xFF110D24);
const canvas1DarkColor = Color(0xFF252436);
const canvas2DarkColor = Color(0xFF383A60);
const accentCanvasColor = Color(0xFF2A313F);
final actionColor = const Color(0xFF2A313F).withOpacity(0.6);
const textColor = Color.fromARGB(255, 241, 249, 255);
const divider = Divider(color: Color.fromARGB(255, 241, 249, 255), height: 1);
