import 'package:flutter/material.dart';
import 'package:solfeggio/ui/ui.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
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
                        alignment: Alignment.topLeft,
                        //margin: const EdgeInsets.all(defaultPadding / 2),
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
                        child: Row(children: [
                          const Text(
                            'Профиль',
                            style:
                                TextStyle(fontSize: 23, color: textDarkColor),
                          ),
                          Container()
                        ]))),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: defaultPadding),
                        child: Icon(
                          Icons.person_2,
                          size: 84,
                          color: textDarkColor,
                        )),
                    Padding(
                        padding: EdgeInsets.only(right: defaultPadding),
                        child: Text('Иванов Иван\n Иванович',
                            style:
                                TextStyle(color: textDarkColor, fontSize: 25)))
                  ],
                ),
                const Padding(
                    padding: EdgeInsets.all(0),
                    child: Text(
                        '                3 класс\n ДМШ им. Сергеева С.С.',
                        style: TextStyle(color: textDarkColor, fontSize: 25)))
              ],
            )));
  }
}
