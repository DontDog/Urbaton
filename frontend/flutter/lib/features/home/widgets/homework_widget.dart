import 'package:flutter/material.dart';
import 'package:solfeggio/ui/ui.dart';

class HomeworkWidget extends StatelessWidget {
  const HomeworkWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Expanded(
        flex: 4,
        child: Container(
            //width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(color: canvas2DarkColor),
              borderRadius: BorderRadius.circular(10),
              color: canvas1DarkColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        //alignment: Alignment.topLeft,
                        margin: const EdgeInsets.all(defaultPadding / 2),
                        padding: const EdgeInsets.only(
                            top: defaultPadding / 2,
                            bottom: defaultPadding / 2,
                            left: defaultPadding,
                            right: defaultPadding),
                        decoration: BoxDecoration(
                          border: Border.all(color: canvas2DarkColor),
                          borderRadius: BorderRadius.circular(10),
                          color: canvas3DarkColor,
                        ),
                        child: const Text(
                          'Домашние задания',
                          style: TextStyle(fontSize: 23, color: textDarkColor),
                        ))),
                Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        margin: const EdgeInsets.only(left: defaultPadding / 2),
                        child: const Text(
                          'Предмет №1:',
                          style: TextStyle(fontSize: 16, color: textDarkColor),
                        ))),
                Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.all(defaultPadding / 2),
                    padding: const EdgeInsets.all(defaultPadding / 2),
                    decoration: BoxDecoration(
                      border: Border.all(color: canvas2DarkColor),
                      borderRadius: BorderRadius.circular(10),
                      color: canvas4DarkColor,
                    ),
                    child: const Text(
                      'Доесть что не доели',
                      style: TextStyle(fontSize: 20, color: textDarkColor),
                    )),
                Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        margin: const EdgeInsets.only(left: defaultPadding / 2),
                        child: const Text(
                          'Предмет №2:',
                          style: TextStyle(fontSize: 16, color: textDarkColor),
                        ))),
                Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.all(defaultPadding / 2),
                    padding: const EdgeInsets.all(defaultPadding / 2),
                    decoration: BoxDecoration(
                      border: Border.all(color: canvas2DarkColor),
                      borderRadius: BorderRadius.circular(10),
                      color: canvas4DarkColor,
                    ),
                    child: const Text(
                      'Доесть что не доели',
                      style: TextStyle(fontSize: 20, color: textDarkColor),
                    )),
                Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        margin: const EdgeInsets.only(left: defaultPadding / 2),
                        child: const Text(
                          'Предмет №3:',
                          style: TextStyle(fontSize: 16, color: textDarkColor),
                        ))),
                Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.all(defaultPadding / 2),
                    padding: const EdgeInsets.all(defaultPadding / 2),
                    decoration: BoxDecoration(
                      border: Border.all(color: canvas2DarkColor),
                      borderRadius: BorderRadius.circular(10),
                      color: canvas4DarkColor,
                    ),
                    child: const Text(
                      'Без задания.',
                      style: TextStyle(fontSize: 20, color: textDarkColor),
                    )),
              ],
            )));
  }
}
