import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:solfeggio/ui/ui.dart';
import '../widgets/widgets.dart';

class DesktopHomeScreen extends StatelessWidget {
  const DesktopHomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final block = Expanded(
        flex: 3,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: canvas2DarkColor),
            borderRadius: BorderRadius.circular(10),
            color: canvas1DarkColor,
          ),
        ));

    const padding = Padding(
      padding: EdgeInsets.all(defaultPadding / 2),
    );

    final row3 = Expanded(
        flex: 1,
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Expanded(
              flex: 18,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: canvas2DarkColor),
                  borderRadius: BorderRadius.circular(10),
                  color: canvas1DarkColor,
                ),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: SvgPicture.asset(
                      theme: SvgTheme(fontSize: 14),
                      "assets/icons/logo.svg",
                      width: 39,
                      height: 39,
                      color: textDarkColor,
                    )),
              )),
          padding,
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.zero,
                //padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: canvas2DarkColor),
                  borderRadius: BorderRadius.circular(10),
                  color: canvas1DarkColor,
                ),
                child: SvgPicture.asset("assets/icons/img_308601.svg",
                    width: 25,
                    height: 25,
                    color: textDarkColor,
                    theme: const SvgTheme(currentColor: textDarkColor)),
              )),
          padding,
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.zero,
                //padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: canvas2DarkColor),
                  borderRadius: BorderRadius.circular(10),
                  color: canvas1DarkColor,
                ),
                child: SvgPicture.asset(
                  "assets/icons/46661bb1dbe1ecd76f5b8f2afadc2f4c.svg",
                  width: 25,
                  height: 25,
                  color: textDarkColor,
                ),
              )),
        ]));

    const row4 = Expanded(
        flex: 7,
        child: Row(children: [NewsWidget(), padding, HomeworkWidget()]));
    final column2 =
        Expanded(flex: 7, child: Column(children: [block, padding, row4]));
    final row2 = Expanded(
        flex: 7,
        child: Row(children: [column2, padding, const CalendarWidget()]));
    // final row3 = Expanded(
    //     flex: 1, child: Row(children: [block, padding, block, padding, block]));
    final column1 = Expanded(
        flex: 7, child: Column(children: [row3, padding, const HelloWidget()]));
    final row1 = Expanded(
        flex: 3,
        child: Row(children: [column1, padding, const ProfileWidget()]));
    final column0 =
        Expanded(flex: 1, child: Column(children: [row1, padding, row2]));

    return Scaffold(
        backgroundColor: scaffoldBackgroundDarkColor,
        body: Padding(
            padding: const EdgeInsets.all(defaultPadding / 2), child: column0));
  }
}
