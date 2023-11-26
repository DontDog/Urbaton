import 'package:flutter/material.dart';
import 'package:solfeggio/ui/ui.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({
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
                          'Новости',
                          style: TextStyle(fontSize: 23, color: textDarkColor),
                        ))),
                Container(
                    //alignment: Alignment.center,
                    margin: const EdgeInsets.all(defaultPadding / 2),
                    padding: const EdgeInsets.all(defaultPadding / 2),
                    decoration: BoxDecoration(
                      border: Border.all(color: canvas2DarkColor),
                      borderRadius: BorderRadius.circular(10),
                      color: canvas4DarkColor,
                    ),
                    child: const Text(
                      'Каждые 60 секунд проходит 1 минута.',
                      style: TextStyle(fontSize: 25, color: textDarkColor),
                    )),
              ],
            )));
  }
}
