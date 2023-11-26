import 'package:flutter/material.dart';
import 'package:solfeggio/ui/ui.dart';

class HelloWidget extends StatelessWidget {
  const HelloWidget({
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
              color: canvas4DarkColor,
            ),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,

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
                          '25 Дек.',
                          style: TextStyle(fontSize: 23, color: textDarkColor),
                        ))),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(defaultPadding / 2),
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: canvas2DarkColor),
                    //   borderRadius: BorderRadius.circular(10),
                    //   color: canvas3DarkColor,
                    // ),
                    child: const Text(
                      'Добрый день, \nИван!',
                      style: TextStyle(fontSize: 25, color: textDarkColor),
                    )),
              ],
            )));
  }
}
