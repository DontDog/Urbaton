import 'package:flutter/material.dart';
import 'package:solfeggio/ui/ui.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class Lesson {
  late String time;
  late String name;
  Lesson(this.time, this.name);
}

class _CalendarWidgetState extends State<CalendarWidget> {
  final List<String> _locations = ['Предыдущая', 'Текущая', 'Следующая'];
  // Option 2
  late String _selectedLocation = 'Текущая'; // Option 2

  late int start;
  late int active;
  late Map<String, int> map;
  final List<String> _days = [
    'Пн',
    'Вт',
    'Ср',
    'Чт',
    'Пт',
    'Сб',
    'Вс',
  ];

  List<Widget> gen_days() {
    List<Widget> arr = [];
    for (int i = 0; i < 7; i++) {
      arr.add(Expanded(
          flex: 1,
          child: GestureDetector(
            child: Container(
                padding: const EdgeInsets.all(defaultPadding / 2),
                decoration: BoxDecoration(
                  //border: Border.all(color: canvas2DarkColor),
                  borderRadius: BorderRadius.circular(10),
                  color: i == active ? canvas3DarkColor : canvas4DarkColor,
                ),
                child: Column(children: [
                  Text(_days[i], style: const TextStyle(color: textDarkColor)),
                  const Padding(
                    padding: EdgeInsets.all(defaultPadding / 4),
                  ),
                  Text((start + i).toString(),
                      style: const TextStyle(color: textDarkColor))
                ])),
            onTap: () => setState(() {
              active = i;
              days = gen_days();
              lessons = gen_lessons();
            }),
          )));
    }
    return arr;
  }

  List<Widget> gen_lessons() {
    List<Widget> arr = [];
    if (_lesson[start + active] == null) return arr;
    for (int i = 0; i < _lesson[start + active]!.length; i++) {
      arr.add(GestureDetector(
        child: Container(
            margin: const EdgeInsets.only(top: defaultPadding),
            padding: const EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              border: Border.all(color: canvas2DarkColor),
              borderRadius: BorderRadius.circular(10),
              color: canvas4DarkColor,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_lesson[start + active]![i][0],
                      style:
                          const TextStyle(color: textDarkColor, fontSize: 24)),
                  const Padding(
                    padding: EdgeInsets.all(defaultPadding / 4),
                  ),
                  Text(_lesson[start + active]![i][1],
                      style:
                          const TextStyle(color: textDarkColor, fontSize: 24))
                ])),
        onTap: () => setState(() {}),
      ));
    }
    print(arr);
    return arr;
  }

  late List<Widget> days;
  late List<Widget> lessons;
  late Map<int, List<List<String>>> _lesson;

  @override
  void initState() {
    start = 20;
    active = 6;
    _lesson = {
      26: [
        ['14:00', 'Предмет №1'],
        ['14:55', 'Предмет №2'],
        ['15:50', 'Предмет №3']
      ]
    };
    map = {
      _locations[0]: start - 7,
      _locations[1]: start,
      _locations[2]: start + 7,
    };
    days = gen_days();
    lessons = gen_lessons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 4,
        child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(color: canvas2DarkColor),
              borderRadius: BorderRadius.circular(10),
              color: canvas1DarkColor,
            ),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: canvas2DarkColor),
                    borderRadius: BorderRadius.circular(10),
                    color: canvas4DarkColor,
                  ),
                  child: Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(defaultPadding / 2),
                          decoration: BoxDecoration(
                            border: Border.all(color: canvas2DarkColor),
                            borderRadius: BorderRadius.circular(10),
                            color: canvas3DarkColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Расписание',
                                style: TextStyle(
                                    fontSize: 24, color: textDarkColor),
                              ),
                              Container(
                                  padding: const EdgeInsets.only(
                                      left: defaultPadding / 4),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: canvas2DarkColor),
                                    borderRadius: BorderRadius.circular(10),
                                    color: canvas4DarkColor,
                                  ),
                                  child: DropdownButton(
                                    // hint: Text('Please choose a location'), // Not necessary for Option 1
                                    value: _selectedLocation,
                                    style:
                                        const TextStyle(color: textDarkColor),
                                    onChanged: (newValue) {
                                      setState(() {
                                        _selectedLocation = newValue!;
                                        start = map[_selectedLocation]!;

                                        days = gen_days();

                                        lessons = gen_lessons();
                                      });
                                    },
                                    items: _locations.map((location) {
                                      return DropdownMenuItem(
                                        value: location,
                                        child: Text(
                                          location,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 20,
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ))
                            ],
                          )),
                      const Padding(
                        padding: EdgeInsets.all(defaultPadding / 2),
                      ),
                      Row(
                        children: days,
                      )
                    ],
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(defaultPadding / 2),
                    decoration: BoxDecoration(
                      //border: Border.all(color: canvas2DarkColor),
                      borderRadius: BorderRadius.circular(10),
                      color: canvas1DarkColor,
                    ),
                    child: Column(children: lessons))
              ],
            )));
  }
}
